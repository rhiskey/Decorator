//
//  AlloyWheels.swift
//  Decorator
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class AlloyWheels: MercedesDecorator{
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    } // link to parent
    
    override func getTitle() -> String {
        return super.getTitle() + "premium wheels"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 1500
    }
}

