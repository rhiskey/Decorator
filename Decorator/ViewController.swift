//
//  ViewController.swift
//  Decorator
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel! {
        didSet{
            priceLabel.text = String(mercedes.getPrice()) + "$"
        }
    }
    
    @IBOutlet weak var commentLabel: UILabel!
    
    var mercedes: CarProtocol = MercedesCLA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
            case 0:
                mercedes = MercedesCLA()
                priceLabel.text = String(mercedes.getPrice()) + "$"
                commentLabel.text = mercedes.getTitle()
            case 1:
                mercedes = MercedesCLA()
                mercedes = AlloyWheels(decorator: mercedes)
                priceLabel.text = String(mercedes.getPrice()) + "$"
                commentLabel.text = mercedes.getTitle()
            case 2:
                mercedes = MercedesCLA()
                mercedes = PanframeRoof(decorator: mercedes)
                priceLabel.text = String(mercedes.getPrice()) + "$"
                commentLabel.text = mercedes.getTitle()
            default:
                break
        }
        
    }
    

}

