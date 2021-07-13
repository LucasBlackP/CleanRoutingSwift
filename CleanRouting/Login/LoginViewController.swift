//
//  LoginViewController.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

final class LoginViewController: UIViewController {
    private let viewModel: LoginViewModel

    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        print("👶 \(self) Created")

        let dismissButton = DefaultButton(title: "Dismiss", target: self, selector: #selector(dismissButtonTouchUpInside))
        let forgottenPasswordButton = DefaultButton(title: "Forgot Password", target: self, selector: #selector(forgottenPasswordButtonTouchUpInside))
        let signUpButton = DefaultButton(title: "Sign Up", target: self, selector: #selector(signUpButtonTouchUpInside))

        let vStack = UIStackView(arrangedSubviews: [dismissButton, forgottenPasswordButton, signUpButton])
        vStack.axis = .vertical
        vStack.spacing = 8.0

        view.addSubview(vStack)
        vStack.layout.center(in: view)
    }

    @objc
    private func dismissButtonTouchUpInside() {
        viewModel.dismissButtonTouchUpInside()
    }

    @objc
    private func forgottenPasswordButtonTouchUpInside() {
    }

    @objc
    private func signUpButtonTouchUpInside() {
    }

    deinit {
        print("♻️ \(self) Deallocated")
    }
}
