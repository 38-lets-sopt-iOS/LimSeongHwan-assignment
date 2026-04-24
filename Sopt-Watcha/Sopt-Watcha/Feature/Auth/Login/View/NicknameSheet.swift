//
//  NicknameSheet.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import SnapKit
import UIKit

class NicknameSheet: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임을 입력해주세요"
        label.font = .subHead1
        label.textColor = .white
        return label
    }()

    private let nicknameTextField: WatchaTextField = .init(placeholder: "닉네임을 입력해주세요")

    private let button: CTA = {
        let button = CTA()
        button.setTitle("완료", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
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
}
