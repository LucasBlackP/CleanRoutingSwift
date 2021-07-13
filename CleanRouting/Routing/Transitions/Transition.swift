//
//  Transition.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 11/07/2021.
//

import UIKit

protocol Transition: class {
    var isAnimated: Bool { get set }

    func open(_ viewController: UIViewController, from: UIViewController, completion: (() -> Void)?)
    func close(_ viewController: UIViewController, completion: (() -> Void)?)
}
