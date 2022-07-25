//
//  ViewController.swift
//  19thDavitShavtvalishvili
//
//  Created by დავით შავთვალიშვილი on 25.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var emailView: UITextField = {
        var emailTextView = UITextField()
        view.addSubview(emailTextView)
        return emailTextView
    }()
    
    lazy var passwordView: UITextField = {
        var passwordTextView = UITextField()
        view.addSubview(passwordTextView)
        return passwordTextView
    }()
    
    lazy var signInButton: UIButton = {
        var button = UIButton()
        view.addSubview(button)
        return button
    }()
    
    lazy var topTitleLabel: UILabel = {
        var topTitle = UILabel()
        view.addSubview(topTitle)
        return topTitle
    }()
    
    lazy var subtextLabel: UILabel = {
        var bottomTitle = UILabel()
        view.addSubview(bottomTitle)
        return bottomTitle
    }()
    
    lazy var backgroundView: UIView = {
        var background = UIView()
        view.addSubview(background)
        return background
    }()
    
    lazy var logoView: UIImageView = {
        var logo = UIImageView()
        view.addSubview(logo)
        return logo
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildPage()
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor.purple.cgColor,
            UIColor.systemCyan.cgColor
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    func buildPage() {
        addBackground()
        addTitle()
        addLogo()
        addEmailTextView()
        addPasswordTextView()
        addSignInButton()
        addSubText()
    }
        
    func addBackground() {
        print("1")
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.backgroundColor = .purple
        backgroundView.layer.opacity = 0.6
        
        //right
        _ = NSLayoutConstraint(
            item: backgroundView,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .right,
            multiplier: 1,
            constant: 100).isActive = true
        //left
        _ = NSLayoutConstraint(
            item: backgroundView,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .left,
            multiplier: 1,
            constant: -100).isActive = true
        //bottom
        _ = NSLayoutConstraint(
            item: backgroundView,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 1,
            constant: 100).isActive = true
        //top
        _ = NSLayoutConstraint(
            item: backgroundView,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .top,
            multiplier: 1,
            constant: -100).isActive = true
    }

    func addTitle() {
        print("2")
        topTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        topTitleLabel.text = "IOS App Templates"
        topTitleLabel.textAlignment = .center
        topTitleLabel.font = UIFont(name: "HelveticaNeue-UltraLight",size: 35.0)
        topTitleLabel.textColor = UIColor.white
        topTitleLabel.layer.shadowColor = UIColor.black.cgColor
        topTitleLabel.layer.shadowOpacity = 0.3
        topTitleLabel.layer.shadowOffset = .zero
        topTitleLabel.layer.shadowRadius = 10
        //center
        _ = NSLayoutConstraint(
            item: topTitleLabel,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        //top
        _ = NSLayoutConstraint(
            item: topTitleLabel,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .top,
            multiplier: 1,
            constant: 50).isActive = true
        //width
        _ = NSLayoutConstraint(
            item: topTitleLabel,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 300).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: topTitleLabel,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 40).isActive = true
    }

    func addLogo() {
        print("3")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.image = UIImage(named: "blue")
        logoView.layer.shadowColor = UIColor.black.cgColor
        logoView.layer.shadowOpacity = 0.3
        logoView.layer.shadowOffset = .zero
        logoView.layer.shadowRadius = 10
        //top
        _ = NSLayoutConstraint(
            item: logoView,
            attribute: .top,
            relatedBy: .equal,
            toItem: topTitleLabel,
            attribute: .bottom,
            multiplier: 1,
            constant: 50).isActive = true
        //right
        _ = NSLayoutConstraint(
            item: logoView,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .right,
            multiplier: 1,
            constant: -80).isActive = true
        //left
        _ = NSLayoutConstraint(
            item: logoView,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .left,
            multiplier: 1,
            constant: 80).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: logoView,
            attribute: .height,
            relatedBy: .equal,
            toItem: self.logoView,
            attribute: .width,
            multiplier: 1,
            constant: 0).isActive = true
    }

    func addEmailTextView() {
        print("4")
        emailView.translatesAutoresizingMaskIntoConstraints = false
        emailView.backgroundColor = .white
        emailView.layer.opacity = 0.8
        emailView.placeholder = "  Email"
        emailView.layer.cornerRadius = 13
        emailView.layer.shadowColor = UIColor.black.cgColor
        emailView.layer.shadowOpacity = 0.3
        emailView.layer.shadowOffset = .zero
        emailView.layer.shadowRadius = 10
        //top
        _ = NSLayoutConstraint(
            item: emailView,
            attribute: .top,
            relatedBy: .equal,
            toItem: logoView,
            attribute: .bottom,
            multiplier: 1,
            constant: 50).isActive = true
        //right
        _ = NSLayoutConstraint(
            item: emailView,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .right,
            multiplier: 1,
            constant: -10).isActive = true
        //left
        _ = NSLayoutConstraint(
            item: emailView,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .left,
            multiplier: 1,
            constant: 10).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: emailView,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 50).isActive = true

    }

    func addPasswordTextView() {
        print("5")
        passwordView.translatesAutoresizingMaskIntoConstraints = false
        passwordView.backgroundColor = .white
        passwordView.layer.opacity = 0.8
        passwordView.placeholder = "  Password"
        passwordView.layer.cornerRadius = self.emailView.layer.cornerRadius
        passwordView.layer.shadowColor = UIColor.black.cgColor
        passwordView.layer.shadowOpacity = 0.3
        passwordView.layer.shadowOffset = .zero
        passwordView.layer.shadowRadius = 10
        //top
        _ = NSLayoutConstraint(
            item: passwordView,
            attribute: .top,
            relatedBy: .equal,
            toItem: emailView,
            attribute: .bottom,
            multiplier: 1,
            constant: 10).isActive = true
        //right
        _ = NSLayoutConstraint(
            item: passwordView,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .right,
            multiplier: 1,
            constant: -10).isActive = true
        //left
        _ = NSLayoutConstraint(
            item: passwordView,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .left,
            multiplier: 1,
            constant: 10).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: passwordView,
            attribute: .height,
            relatedBy: .equal,
            toItem: self.emailView,
            attribute: .height,
            multiplier: 1,
            constant: 0).isActive = true

    }

    func addSignInButton() {
        print("6")
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = UIColor(red: 0.40, green: 0.76, blue: 0.40, alpha: 1.00)
        signInButton.layer.cornerRadius = 16
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.layer.shadowColor = UIColor.black.cgColor
        signInButton.layer.shadowOpacity = 0.3
        signInButton.layer.shadowOffset = .zero
        signInButton.layer.shadowRadius = 10
        //top
        _ = NSLayoutConstraint(
            item: signInButton,
            attribute: .top,
            relatedBy: .equal,
            toItem: passwordView,
            attribute: .bottom,
            multiplier: 1,
            constant: 60).isActive = true
        //right
        _ = NSLayoutConstraint(
            item: signInButton,
            attribute: .right,
            relatedBy: .equal,
            toItem: view,
            attribute: .right,
            multiplier: 1,
            constant: -50).isActive = true
        //left
        _ = NSLayoutConstraint(
            item: signInButton,
            attribute: .left,
            relatedBy: .equal,
            toItem: view,
            attribute: .left,
            multiplier: 1,
            constant: 50).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: signInButton,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 55).isActive = true

    }

    func addSubText() {
        print("7")
        subtextLabel.translatesAutoresizingMaskIntoConstraints = false
        subtextLabel.text = "somthing something subtext"
        subtextLabel.textAlignment = .center
        //center
        _ = NSLayoutConstraint(
            item: subtextLabel,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1,
            constant: 0).isActive = true
        //width
        _ = NSLayoutConstraint(
            item: subtextLabel,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 300).isActive = true
        //height
        _ = NSLayoutConstraint(
            item: subtextLabel,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 40).isActive = true
        //bottom
        _ = NSLayoutConstraint(
            item: subtextLabel,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 1,
            constant: -20).isActive = true

    }
}


#if canImport(swiftUI) && DEBUG
import SwiftUI
struct PreviewViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }.previewDevice("iPhone 12")
    }
}

struct ViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
#endif
