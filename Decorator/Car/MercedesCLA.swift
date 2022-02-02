//
//  MercedesCLA.swift
//  Decorator
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class MercedesCLA: CarProtocol{
    func getTitle() -> String {
        return "MercedesCLA"
    }
    
    func getPrice() -> Double {
        return 12000
    }
}
