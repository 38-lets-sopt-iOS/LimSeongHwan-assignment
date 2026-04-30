//
//  WelcomeViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import UIKit
import SnapKit
import Then

class WelcomeViewController: UIViewController {
    private var nickName: String?

    private let logoImage = UIImageView().then {
        $0.image = .watchaLogo
    }

    private let welcomeLabel = UILabel().then {
        $0.text = "가입을 환영합니다"
        $0.font = .head2
        $0.textColor = .white
        $0.textAlignment = .center
        $0.numberOfLines = 2
    }

    private let toMainButton: PrimaryButton = .init(title: "메인으로")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
    }
    
    private func setUI() {
        view.addSubviews(logoImage, welcomeLabel, toMainButton)
    }
    
    private func setLayout() {
        logoImage.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(42)
            $0.centerX.equalToSuperview()
        }
        welcomeLabel.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(54)
            $0.centerX.equalToSuperview()
        }
        toMainButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.horizontalEdges.equalToSuperview().inset(22)
            $0.height.equalTo(56)
        }
    }
    
    init(nickName: String) {
        super.init(nibName: nil, bundle: nil)
        welcomeLabel.text = "\(nickName)님\n가입을 환영합니다!"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
