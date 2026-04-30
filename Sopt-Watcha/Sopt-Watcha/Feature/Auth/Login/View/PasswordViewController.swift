//
//  PasswordViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit
import SnapKit
import Then

class PasswordViewController: UIViewController {
    // MARK: - 프로퍼티

    private var email: String = ""
    private var nickName: String = ""
    private var hasNickname: Bool = false {
        didSet { updateNextButton() }
    }

    // MARK: - UI

    private let titleLabel = AuthTitleLabel().then {
        $0.text = "사용할 비밀번호를\n입력해주세요"
    }

    private let subLabelStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 5
    }

    private let subLabel: AuthSubLabel = .init()

    private let passwordTextField = WatchaTextField(placeholder: "비밀번호 입력").then {
        $0.returnKeyType = .done
        $0.isSecureTextEntry = true
        $0.rightIcon = .eyeOff
    }

    private let regStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 6
    }

    private let regIcon = UIImageView().then {
        $0.image = .enableOff
    }

    private let regLabel = UILabel().then {
        $0.text = "영문, 숫자, 특수문자 포함 10글자 이상"
        $0.font = .body2
        $0.textColor = .gray100
    }

    private let nickNameButton = UIButton().then {
        $0.setTitleColor(.gray100, for: .normal)
        $0.titleLabel?.font = .body2
        $0.setAttributedTitle(
            NSAttributedString(
                string: "닉네임 설정",
                attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]
            ),
            for: .normal
        )
    }

    private let nextButton: PrimaryButton = .init(title: "다음", isEnabled: false)
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
        setAction()
    }
    
    // MARK: - 레이아웃

    private func setUI() {
        subLabelStackView.addStackViews(subLabel)
        regStackView.addStackViews(regIcon, regLabel)
        view.addSubviews(titleLabel, subLabelStackView, passwordTextField, regStackView, nickNameButton, nextButton)
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
            $0.horizontalEdges.equalToSuperview().inset(31)
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
            $0.horizontalEdges.equalToSuperview().inset(22)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.height.equalTo(56)
        }
    }
    
    // MARK: - Bind

    init(email: String) {
        super.init(nibName: nil, bundle: nil)
        self.email = email
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        let isVaild = passwordTextField.text?.isValidPassword ?? false
        if isVaild {
            regIcon.image = .enableOn
            regLabel.textColor = .watchaGreen
        } else {
            regIcon.image = .enableOff
            regLabel.textColor = .gray100
        }
        updateNextButton()
    }

    private func updateNextButton() {
        nextButton.isEnabled = ((passwordTextField.text?.isValidPassword) != false) && hasNickname
    }
    
    @objc
    private func nickNameButtonDidTap() {
        let nicknameSheet = NicknameSheetViewController()
        nicknameSheet.delegate = self
        nicknameSheet.sheetPresentationController?.detents = [.medium()]
        nicknameSheet.sheetPresentationController?.preferredCornerRadius = 12
        nicknameSheet.sheetPresentationController?.prefersGrabberVisible = true
        present(nicknameSheet, animated: true)
    }
    
    @objc
    private func navigateToWelcomeVC() {
        let WelcomeVC = WelcomeViewController(nickName: nickNameButton.titleLabel?.text ?? "")
        navigationController?.pushViewController(WelcomeVC, animated: true)
    }
    
    @objc
    private func togglePasswordTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        let isSecure = passwordTextField.isSecureTextEntry
        passwordTextField.updateRightIcon(isSecure ? .eyeOff : .eyeOn)
    }
}

// MARK: - NicknameSheetDelegateProtocol

extension PasswordViewController: NicknameSheetDelegateProtocol {
    func setNickname(nickname: String) {
        configure(nickName: nickname)
    }
}
