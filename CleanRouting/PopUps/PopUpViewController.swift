//
//  PopUpViewController.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

final class PopUpViewController: UIViewController {
    private let viewModel: PopUpViewModel

    init(viewModel: PopUpViewModel) {
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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = viewModel.message

        let vStack = UIStackView(arrangedSubviews: [label, dismissButton])
        vStack.axis = .vertical
        vStack.spacing = 8.0

        view.addSubview(vStack)
        vStack.layout.center(in: view)
    }

    @objc
    private func dismissButtonTouchUpInside() {
        viewModel.dismissButtonTouchUpInside()
    }

    deinit {
        print("♻️ \(self) Deallocated")
    }
}
