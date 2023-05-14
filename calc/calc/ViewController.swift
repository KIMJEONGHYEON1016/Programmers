//
//  ViewController.swift
//  calc
//
//  Created by 김정현 on 2023/05/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultNumber: UILabel!
    
    @IBOutlet var NumButton: [CircleButton]!
    
    @IBOutlet weak var cancelButton: CircleButton!
    
    @IBOutlet weak var PlusMinus: CircleButton!
    
    @IBOutlet weak var Percentage: CircleButton!
    
    @IBOutlet weak var Division: CircleButton!
    
    @IBOutlet weak var Multiplication: CircleButton!
    
    @IBOutlet weak var Subtraction: CircleButton!
    
    @IBOutlet weak var Plus: CircleButton!
    
    
    @IBOutlet weak var Result: CircleButton!
    
    var NumString = "" {
        didSet{
            DispatchQueue.main.async {
                [weak self] in
                
                guard let self = self else {return}
                self.ResultNumber.text = self.NumString
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResultNumber.adjustsFontSizeToFitWidth = true
        ResultNumber.numberOfLines = 1
        
        for btnItem in NumButton {
            btnItem.addTarget(self, action: #selector(onnumclick(sender:)), for: .touchUpInside)
        }
        
        cancelButton.addTarget(self, action: #selector(cancel(sender:)), for: .touchUpInside)
        
        PlusMinus.addTarget(self, action: #selector(plusminus(sender:)), for: .touchUpInside)
        
        Percentage.addTarget(self, action: #selector(percentage(sender:)), for: .touchUpInside)
        
        Division.addTarget(self, action: #selector(division(sender:)), for: .touchUpInside)
     
    }

    @objc fileprivate func onnumclick(sender: UIButton){
        guard let inputString = sender.titleLabel?.text else {return}
        if NumString == "0" {
            NumString.removeFirst()
            NumString.append(inputString)
        }else{
            NumString.append(inputString)
        }
    }
    
    @objc fileprivate func cancel(sender:UIButton){
       NumString = "0"
            }
    
    @objc fileprivate func plusminus(sender:UIButton){
        if NumString.hasPrefix("-") {
                NumString.remove(at: NumString.startIndex)
            } else {
                NumString = "-" + NumString
            }
    }

    
    @objc fileprivate func
    percentage(sender:UIButton){
            guard let num = Double(NumString) else { return }
            NumString = String(num / 100)
    }
    
    @objc fileprivate func
    division(sender:UIButton){
        
    }
    
}




