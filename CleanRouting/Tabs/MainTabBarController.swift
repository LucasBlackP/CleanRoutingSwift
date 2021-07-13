//
//  MainTabBarController.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 11/07/2021.
//

import UIKit

enum Tabs {
    case pay
    case shop
    case profile
    case orders
    
    var index: Int {
        switch self {
        case .pay: return 0
        case .orders: return 1
        case .shop: return 2
        case .profile: return 3
        }
    }
    
    var item: UITabBarItem {
        switch self {
        case .pay:
            return UITabBarItem(title: "Pay", image: nil, tag: index)
        case .orders:
            return UITabBarItem(title: "Orders", image: nil, tag: index)
        case .shop:
            return UITabBarItem(title: "Shop", image: nil, tag: index)
        case .profile:
            return UITabBarItem(title: "Profile", image: nil, tag: index)
        }
    }
}

final class MainTabBarController: UITabBarController {
    required init(viewControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = viewControllers
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
