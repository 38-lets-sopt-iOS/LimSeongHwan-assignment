//
//  LoginViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import SnapKit
import UIKit

class LoginViewController: UIViewController {
    private let titleLabel: AuthTitleLabel = {
        let label = AuthTitleLabel()
        label.text = "로그인/가입하려는\n이메일을 입력해주세요"
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
        label.text = "결제 등 중요 정보 알림, 로그인, 비밀번호 찾기에 필요해요"
        return label
    }()
    
    private let subLabel2: AuthSubLabel = {
        let label = AuthSubLabel()
        label.text = "사용 중인 이메일을 입력해주세요"
        return label
    }()
    
    private let emailTextField: WatchaTextField = {
        let textField = WatchaTextField(placeholder: "email@address.com")
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .done
        textField.rightIcon = UIImage(named: "check-off")
        return textField
    }()
    
    private let nextButton: CTABool = {
        let button = CTABool()
        button.setTitle("다음", for: .normal)
        button.isEnabled = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
    }
    
    private func setUI() {
        subLabelStackView.addStackViews(subLabel, subLabel2)
        view.addSubviews(titleLabel, subLabelStackView, emailTextField, nextButton)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
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
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(subLabelStackView.snp.bottom).offset(27)
            $0.leading.trailing.equalToSuperview().inset(31)
            $0.height.equalTo(47)
        }
        nextButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(22)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.height.equalTo(56)
        }
    }
}
