//
//  Presentable.swift
//
//
//  Created by Alisher Aidarkhan on 07.05.2024.
//

import Foundation
import UIKit

public protocol Presentable {
    var toPresent: UIViewController? { get }
}

extension UIViewController: Presentable {
    public var toPresent: UIViewController? {
        return self
    }
    
    func showAlert(title: String, message: String? = nil) {
        // TODO: Заменить на SwiftMessages и сделать алерты info, error, success
    }
}
