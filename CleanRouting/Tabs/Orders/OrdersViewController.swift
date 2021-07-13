//
//  OrdersViewController.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 11/07/2021.
//

import UIKit

final class OrdersViewController: UIViewController {
    private let presenter: OrdersPresenter

    init(presenter: OrdersPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Orders"
        
        let loginButton = DefaultButton(title: "Login", target: self, selector: #selector(loginButtonTouchUpInside))

        let detailsButton = DefaultButton(title: "Open a Details", target: self, selector: #selector(detailsButtonTouchUpInside))
        
        let popupButton = DefaultButton(title: "Show Popup", target: self, selector: #selector(popupButtonTouchUpInside))
        
        let vStack = UIStackView(arrangedSubviews: [loginButton, detailsButton, popupButton])
        vStack.axis = .vertical
        vStack.spacing = 8.0

        view.addSubview(vStack)
        vStack.layout.center(in: view)
    }

    @objc
    private func detailsButtonTouchUpInside() {
        presenter.detailsButtonTouchUpInside()
    }
    
    @objc
    private func popupButtonTouchUpInside() {
        presenter.popupButtonTouchUpInside()
    }
    
    @objc
    private func loginButtonTouchUpInside() {
        presenter.loginButtonTouchUpInside()
    }
}
