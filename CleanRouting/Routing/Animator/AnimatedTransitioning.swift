//
//  AnimatedTransitioning.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import UIKit

protocol AnimatedTransitioning: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
