//
//  ViewController.swift
//  TestLocationTask
//
//  Created by Mahmoud Abdul-wahab on 22/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let controller = CountryDectectorViewController()
        controller.didDetectCountryCode = { countryCode in
            print(countryCode)
            self.countryLable.text = countryCode
        }
        controller.loadViewIfNeeded()
    }


}

