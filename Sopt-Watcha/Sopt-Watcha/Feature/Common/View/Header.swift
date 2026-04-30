//
//  Header.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit
import SnapKit
import Then

final class Header: BaseUIView {

    // MARK: - UI

    private let headerLabel = UILabel().then {
        $0.font = .head2
        $0.textColor = .watchaWhite
    }
    
    private let headerButtonStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 20
    }
    
    private let videoButton = UIButton().then {
        $0.setImage(.videoIcon, for: .normal)
    }

    private let notificationButton = UIButton().then {
        $0.setImage(.notificationIcon, for: .normal)
    }

    private let profileButton = UIButton().then {
        $0.setImage(.profileIcon, for: .normal)
    }

    // MARK: - Init

    init(title: String) {
        super.init(frame: .zero)
        headerLabel.text = title
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup

    override func setUp() {
        headerButtonStackView.addStackViews(videoButton, notificationButton, profileButton)
        addSubviews(headerLabel, headerButtonStackView)
        addBottomBorder(color: .gray600)
    }

    override func setLayout() {
        snp.makeConstraints {
            $0.height.equalTo(56)
        }
        headerLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(28)
            $0.leading.equalToSuperview().inset(27)
        }
        headerButtonStackView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(17)
            $0.trailing.equalToSuperview().inset(30)
        }
    }

}
