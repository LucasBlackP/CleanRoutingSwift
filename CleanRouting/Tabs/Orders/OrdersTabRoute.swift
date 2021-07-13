//
//  OrdersTabRoute.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

protocol OrdersTabRoute {
    func makeOrdersTab() -> UIViewController
}

extension OrdersTabRoute where Self: Router {
    func makeOrdersTab() -> UIViewController {
        // No transitions since these are managed by the TabBarController
        let router = MainRouter(rootTransition: EmptyTransition())
        let presenter = OrdersPresenter(router: router)
        let viewController = OrdersViewController(presenter: presenter)
        router.root = viewController

        let navigation = UINavigationController(rootViewController: viewController)
        navigation.tabBarItem = Tabs.orders.item
        return navigation
    }
    
    // This method isn't part of the interface and can only be used
    // internally by instances that conform to Router, like DefaultRouter,
    // DeeplinkRouter and others.
    func selectShopTab() {
        root?.tabBarController?.selectedIndex = Tabs.orders.index
    }
}

extension MainRouter: OrdersTabRoute {}
