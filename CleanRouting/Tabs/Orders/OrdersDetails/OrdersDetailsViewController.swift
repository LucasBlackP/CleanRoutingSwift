//
//  OrdersDetailsViewController.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

final class OrdersDetailsViewController: UIViewController {
    private let presenter: OrdersDetailsPresenter

    init(presenter: OrdersDetailsPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        print("👶 \(self) Created")

        let productButton = DefaultButton(title: "Open another Details", target: self, selector: #selector(detailsButtonTouchUpInside))

        let vStack = UIStackView(arrangedSubviews: [productButton])
        vStack.axis = .vertical
        vStack.spacing = 8.0

        view.addSubview(vStack)
        vStack.layout.center(in: view)
    }



    @objc
    private func detailsButtonTouchUpInside() {
        presenter.detailsButtonTouchUpInside()
    }

    deinit {
        print("♻️ \(self) Deallocated")
    }
}
