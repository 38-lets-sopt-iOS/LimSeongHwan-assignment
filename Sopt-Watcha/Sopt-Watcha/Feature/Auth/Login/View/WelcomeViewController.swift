//
//  WelcomeViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/24/26.
//

import SnapKit
import Then
import UIKit

class WelcomeViewController: UIViewController {
    var nickName: String?

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

    private let button = CTABool().then {
        $0.setTitle("메인으로", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
        bind()
    }
    
    private func setUI() {
        view.addSubviews(logoImage, welcomeLabel, button)
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
        button.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(13)
            $0.horizontalEdges.equalToSuperview().inset(22)
            $0.height.equalTo(56)
        }
    }
    
    func bind() {
        welcomeLabel.text = "\(nickName ?? "닉네임")님\n가입을 환영합니다!"
    }
}
