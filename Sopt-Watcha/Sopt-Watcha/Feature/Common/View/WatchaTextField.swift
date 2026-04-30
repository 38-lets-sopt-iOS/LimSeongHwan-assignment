//
//  WatchaTextField.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

class WatchaTextField: UITextField {
    // MARK: - 프로퍼티
    
    var rightIcon: UIImage? = nil
    var onRightIconTapped: (() -> Void)? = nil

    // MARK: - UI
    
    private let rightIconButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        return button
    }()

    private let clearButton: UIButton = {
        let button = UIButton()
        button.setImage(.closeSquare, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        return button
    }()

    init(placeholder: String) {
        super.init(frame: .zero)
        setup(placeholder: placeholder)
        setAction()
    }

    override func becomeFirstResponder() -> Bool {
        let result = super.becomeFirstResponder()
        setFocusTextField()
        return result
    }

    override func resignFirstResponder() -> Bool {
        let result = super.resignFirstResponder()
        setFocusOutTextField()
        return result
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - 레이아웃
    
    private func setup(placeholder: String) {
        backgroundColor = .gray600
        layer.cornerRadius = 10
        textColor = .watchaWhite
        font = .body2
        setPlaceHolder(placeholder: placeholder, color: .gray300)
        tintColor = .watchaPink
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        leftViewMode = .always
    }
    
    // MARK: - 액션
    
    private func setAction() {
        clearButton.addTarget(self, action: #selector(didTapClearButton), for: .touchUpInside)
        rightIconButton.addTarget(self, action: #selector(didTapRightIcon), for: .touchUpInside)
    }

    @objc private func didTapClearButton() {
        text = nil
        sendActions(for: .editingChanged)
    }

    @objc private func didTapRightIcon() {
        onRightIconTapped?()
    }
    
    func updateRightIcon(_ image: UIImage?) {
        rightIcon = image
        if rightView != nil {
            rightView = makeFocusRightView()
        }
    }

    private func makeFocusRightView() -> UIView {
        var totalWidth = clearButton.frame.width
        if rightIcon != nil { totalWidth += 24 + 8 }
        let container = UIView(frame: CGRect(x: 0, y: 0, width: totalWidth + 10, height: clearButton.frame.height))
        clearButton.frame.origin.x = 0
        container.addSubview(clearButton)
        if let icon = rightIcon {
            rightIconButton.setImage(icon, for: .normal)
            rightIconButton.frame = CGRect(x: clearButton.frame.width + 8, y: 0, width: 24, height: 24)
            container.addSubview(rightIconButton)
        }
        return container
    }

    private func setFocusTextField() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray200.cgColor
        rightView = makeFocusRightView()
        rightViewMode = .always
    }

    private func setFocusOutTextField() {
        layer.borderWidth = 0
        layer.borderColor = nil
        rightView = nil
        rightViewMode = .never
    }
}
