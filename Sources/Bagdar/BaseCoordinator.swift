//
//  BaseCoordinator.swift
//
//
//  Created by Alisher Aidarkhan on 07.05.2024.
//

import Foundation

open class BaseCoordinator {
    /// Массив дочерних координаторов
    var childCoordinators: [Coordinatable] = []

    public init() { }
    
    /// Добавляет в массив дочерних координаторов передаваемый координатор
    /// - Parameters:
    ///   - coordinator: Передаваемый координатор
    public func addDependency(_ coordinator: Coordinatable) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    /// Удаляет передаваемый координатор из массива дочерних координаторов
    /// - Parameters:
    ///   - coordinator: Передаваемый координатор
    public func removeDependency(_ coordinator: Coordinatable?) {
        guard let coordinator else { return }
        guard childCoordinators.isEmpty == false else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
