//
//  PanframeRoof.swift
//  Decorator
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class PanframeRoof: MercedesDecorator{
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    } // link to parent
    
    override func getTitle() -> String {
        return super.getTitle() + "premium roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 2000
    }
}
