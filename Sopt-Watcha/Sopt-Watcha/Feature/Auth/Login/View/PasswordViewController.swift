//
//  PasswordViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit
import SnapKit

class PasswordViewController: UIViewController {
    private let titleLabel: AuthTitleLabel = {
        let label = AuthTitleLabel()
        label.text = "사용할 비밀번호를\n입력해주세요"
        return label
    }()
    
    private let subLabelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    private let subLabel: AuthSubLabel = {
        let label = AuthSubLabel()
        label.text = "~~로 가입중"
        return label
    }()
    
    private let passwordTextField: WatchaTextField = {
        let textField = WatchaTextField(placeholder: "비밀번호 입력")
        textField.returnKeyType = .done
        textField.isSecureTextEntry = true
        textField.rightIcon = UIImage(named: "eye-off")
        return textField
    }()
    
    private let regStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 6
        return stackView
    }()
    
    private let regIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "enable-off")
        return imageView
    }()
    
    private let regLabel: UILabel = {
        let label = UILabel()
        label.text = "영문, 숫자, 특수문자 포함 10글자 이상"
        label.font = .body2
        label.textColor = .gray100
        return label
    }()
    
    private let nickNameButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.gray100, for: .normal)
        button.titleLabel?.font = .body2
        button.setAttributedTitle(
            NSAttributedString(
                string: "닉네임 설정",
                attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]
            ),
            for: .normal
        )
        
        return button
    }()
    
    private let nextButton: CTABool = {
        let button = CTABool()
        button.setTitle("가입하기", for: .normal)
        button.isEnabled = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
    }
    
    private func setUI() {
        subLabelStackView.addStackViews(subLabel)
        regStackView.addStackViews(regIcon, regLabel)
        nickNameButton.addTarget(self, action: #selector(nickNameButtonDidTap), for: .touchUpInside)
        view.addSubviews(titleLabel, subLabelStackView, regStackView, passwordTextField, nickNameButton, nextButton)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        regStackView.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        nickNameButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(109)
            $0.leading.equalToSuperview().inset(30)
        }
        subLabelStackView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(13)
            $0.leading.equalToSuperview().inset(30)
        }
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(subLabelStackView.snp.bottom).offset(44)
            $0.leading.trailing.equalToSuperview().inset(31)
            $0.height.equalTo(47)
        }
        regStackView.snp.makeConstraints{
            $0.top.equalTo(passwordTextField.snp.bottom).offset(13)
            $0.leading.equalToSuperview().inset(35)
        }
        nickNameButton.snp.makeConstraints{
            $0.top.equalTo(regStackView.snp.bottom).offset(40)
            $0.centerX.equalToSuperview()
        }
        nextButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(22)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.height.equalTo(56)
        }
    }
    
    @objc
    func nickNameButtonDidTap() {
        let nicknameSheet = NicknameSheet()
        nicknameSheet.sheetPresentationController?.detents = [.medium()]
        nicknameSheet.sheetPresentationController?.preferredCornerRadius = 12
        nicknameSheet.sheetPresentationController?.prefersGrabberVisible = true
        present(nicknameSheet, animated: true)
    }
}
