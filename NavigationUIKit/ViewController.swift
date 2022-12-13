//
//  ViewController.swift
//  NavigationUIKit
//
//  Created by Paulo Antonelli on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    let button: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        self.button.backgroundColor = .white
        self.button.setTitleColor(.gray, for: .normal)
        self.button.setTitle("SecondViewController", for: .normal)
        self.button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() -> Void {
        let rootViewController = SecondViewController()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
    }
}

class SecondViewController: UIViewController {
    private let button: UIButton = UIButton()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .purple
        self.title = "SecondViewController"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSecondViewController))
        
        self.button.backgroundColor = .white
        self.button.setTitleColor(.gray, for: .normal)
        self.button.setTitle("Push ViewController", for: .normal)
        self.button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        self.view.addSubview(self.button)
    }
    
    @objc func didTapButton() -> Void {
        let thirdViewController = ThirdViewController()
        self.navigationController?.pushViewController(thirdViewController, animated: true)
    }
    
    @objc func dismissSecondViewController() -> Void {
        dismiss(animated: true, completion: nil)
    }
}
class ThirdViewController: UIViewController {
    private let button: UIButton = UIButton()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .cyan
        self.title = "ThirdViewController"
        
        self.button.backgroundColor = .white
        self.button.setTitleColor(.gray, for: .normal)
        self.button.setTitle("Push ViewController", for: .normal)
        self.button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        self.view.addSubview(self.button)
    }
    
    @objc func didTapButton() -> Void {
        let fourthViewController = FourthViewController()
        self.navigationController?.pushViewController(fourthViewController, animated: true)
    }
}
class FourthViewController: UIViewController {
    private let button: UIButton = UIButton()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .orange
        self.title = "FourthViewController"
        
        self.button.backgroundColor = .white
        self.button.setTitleColor(.gray, for: .normal)
        self.button.setTitle("Back ViewController", for: .normal)
        self.button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.button.addTarget(self, action: #selector(self.didTapButton), for: .touchUpInside)
        self.view.addSubview(self.button)
    }
    
    @objc func didTapButton() -> Void {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
