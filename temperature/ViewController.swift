//
//  ViewController.swift
//  temperature
//
//  Created by darkgod on 14/10/28.
//  Copyright (c) 2014年 darkgod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        self.updateTemperatureDisplays()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTemperatureDisplays() {
        celsiusLabel.text = String(format: "%.2fC", arguments: [temperatureSlider.value])
        fahrenheitLabel.text = String(format: "%.2fF", arguments: [(temperatureSlider.value * 9 / 5) + 32])
        kelvinLabel.text = String(format: "%.2fK", arguments: [temperatureSlider.value + 273.15])
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//    }

}

