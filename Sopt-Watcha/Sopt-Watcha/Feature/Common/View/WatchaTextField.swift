//
//  WatchaTextField.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit

class WatchaTextField: UITextField {
    private let clearButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Close Square"), for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        return button
    }()

    init(placeholder: String) {
        super.init(frame: .zero)
        setup(placeholder: placeholder)
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

    private func setup(placeholder: String) {
        backgroundColor = .gray600
        layer.cornerRadius = 10
        textColor = .white
        font = .body2
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [.foregroundColor: UIColor.gray300]
        )
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        leftViewMode = .always
        clearButton.addTarget(self, action: #selector(didTapClearButton), for: .touchUpInside)
    }

    @objc private func didTapClearButton() {
        text = nil
        sendActions(for: .editingChanged)
    }

    private func setFocusTextField() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray200.cgColor
        let container = UIView(frame: CGRect(x: 0, y: 0, width: clearButton.frame.width + 10, height: clearButton.frame.height))
        clearButton.frame.origin.x = 0
        container.addSubview(clearButton)
        rightView = container
        rightViewMode = .always
    }

    private func setFocusOutTextField() {
        layer.borderWidth = 0
        layer.borderColor = nil
        rightView = nil
        rightViewMode = .never
    }
}
