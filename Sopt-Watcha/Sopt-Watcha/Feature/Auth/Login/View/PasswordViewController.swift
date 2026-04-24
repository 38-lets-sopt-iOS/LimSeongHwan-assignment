//
//  PasswordViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import SnapKit
import UIKit

class PasswordViewController: UIViewController {
    // MARK: - 프로퍼티

    var email: String = ""
    var nickName: String = ""
    private var hasNickname: Bool = false {
        didSet { updateNextButton() }
    }

    // MARK: - UI

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
    
    private let subLabel: AuthSubLabel = .init()
    
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
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
        bind()
        setAction()
    }
    
    // MARK: - 레이아웃

    private func setUI() {
        subLabelStackView.addStackViews(subLabel)
        regStackView.addStackViews(regIcon, regLabel)
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
        regStackView.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(13)
            $0.leading.equalToSuperview().inset(35)
        }
        nickNameButton.snp.makeConstraints {
            $0.top.equalTo(regStackView.snp.bottom).offset(40)
            $0.centerX.equalToSuperview()
        }
        nextButton.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(22)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.height.equalTo(56)
        }
    }
    
    // MARK: - Bind

    func bind() {
        subLabel.text = "\(email)로 가입중"
    }
    
    func configure(nickName: String?) {
        self.nickName = nickName ?? "닉네임"
        hasNickname = true
        nickNameButton.setAttributedTitle(
            NSAttributedString(
                string: nickName ?? "닉네임 설정",
                attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]
            ),
            for: .normal
        )
    }
    
    // MARK: - 액션

    private func setAction() {
        nickNameButton.addTarget(self, action: #selector(nickNameButtonDidTap), for: .touchUpInside)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        nextButton.addTarget(self, action: #selector(navigateToWelcomeVC), for: .touchUpInside)
        passwordTextField.onRightIconTapped = { [weak self] in
            self?.togglePasswordTapped()
        }
    }

    @objc private func textFieldDidChange() {
        updateNextButton()
    }

    private func updateNextButton() {
        nextButton.isEnabled = !(passwordTextField.text?.isEmpty ?? true) && hasNickname
    }
    
    @objc
    func nickNameButtonDidTap() {
        let nicknameSheet = NicknameSheet()
        nicknameSheet.delegate = self
        nicknameSheet.sheetPresentationController?.detents = [.medium()]
        nicknameSheet.sheetPresentationController?.preferredCornerRadius = 12
        nicknameSheet.sheetPresentationController?.prefersGrabberVisible = true
        present(nicknameSheet, animated: true)
    }
    
    @objc
    private func navigateToWelcomeVC() {
        let WelcomeVC = WelcomeViewController()
        WelcomeVC.nickName = nickName
        navigationController?.pushViewController(WelcomeVC, animated: true)
        
    }
    
    @objc
    private func togglePasswordTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        let isSecure = passwordTextField.isSecureTextEntry
        passwordTextField.updateRightIcon(UIImage(named: isSecure ? "eye-off" : "eye-on"))
    }
}

// MARK: - NicknameSheetDelegateProtocol

extension PasswordViewController: NicknameSheetDelegateProtocol {
    func setNickname(nickname: String) {
        configure(nickName: nickname)
    }
}
