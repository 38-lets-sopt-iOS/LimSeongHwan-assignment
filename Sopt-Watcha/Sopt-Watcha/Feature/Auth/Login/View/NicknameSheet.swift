//
//  NicknameSheet.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit
import SnapKit
import Then

protocol NicknameSheetDelegateProtocol: AnyObject {
    func setNickname(nickname: String)
}

class NicknameSheet: UIViewController {
    weak var delegate: NicknameSheetDelegateProtocol?

    private let titleLabel = UILabel().then {
        $0.text = "닉네임을 입력해주세요"
        $0.font = .subHead1
        $0.textColor = .white
    }

    private let nicknameTextField: WatchaTextField = .init(placeholder: "닉네임을 입력해주세요")

    private let button = CTA().then {
        $0.setTitle("완료", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
        setAction()
    }

    private func setUI() {
        view.addSubviews(titleLabel, nicknameTextField, button)
        view.backgroundColor = .gray400
    }

    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(42)
            $0.leading.equalToSuperview().inset(24)
        }
        nicknameTextField.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(19)
            $0.horizontalEdges.equalToSuperview().inset(31)
            $0.height.equalTo(47)
        }
        button.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(47)
            $0.horizontalEdges.equalToSuperview().inset(22)
            $0.height.equalTo(56)
        }
    }
    
    private func setAction() {
        button.addTarget(self, action: #selector(didTapFinishButton), for: .touchUpInside)
    }
    
    @objc
    private func didTapFinishButton() {
        if let nickname = nicknameTextField.text, !nickname.isEmpty {
            delegate?.setNickname(nickname: nickname)
        }
        dismiss(animated: true)
    }
}
