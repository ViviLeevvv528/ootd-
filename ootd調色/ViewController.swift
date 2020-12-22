//
//  ViewController.swift
//  ootd調色
//
//  Created by Vivi Lee on 2020/12/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boy: UIImageView!
    @IBOutlet weak var girl: UIImageView!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var pickup: UISegmentedControl!
    
    @IBOutlet weak var RandomButton: UIButton!
    var tempView = UIImageView(frame: CGRect(x:0, y:0, width:50, height:50))
    

    override func viewDidLoad() {
        super.viewDidLoad()
                boy.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
                girl.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        tempView = boy

    }

    @IBAction func pickoneSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            tempView = boy
        }
        if sender.selectedSegmentIndex == 1{
            tempView = girl        }
    }
    
    @IBAction func changecolor(_ sender: UISlider) {
        tempView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
    @IBAction func RandomAction(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        tempView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
}

