//
//  BaseUIViewController.swift
//  Sopt-Watcha
//
//  Created by 성환 on 4/30/26.
//

import UIKit

class BaseUIViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .watchaBlack
        
        setUp()
        setLayout()
        setAction()
        setDelegate()
    }
    
    func setUp() {}
    
    func setLayout() {}
    
    func setAction() {}
    
    func setDelegate() {}
}
