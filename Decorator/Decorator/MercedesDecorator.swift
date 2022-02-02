//
//  MercedesDecorator.swift
//  Decorator
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class MercedesDecorator: CarProtocol {
    private let decoratorType: CarProtocol
    
    required init(decorator: CarProtocol){
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
    
    
}
