//
//  SecondViewController.swift
//  HW2
//
//  Created by GLaDOS on 29.05.2022.
//

import UIKit

// Delegation data transfer protocol
protocol DataTransferDelegate {
    func transferData(_ data:String)
}

class SecondViewController: UIViewController {
    
    var transferDelegate:DataTransferDelegate?

    // UI Elements
    @IBOutlet weak var lbl_notification: UILabel!
    @IBOutlet weak var btn_data3: UIButton!
    @IBOutlet weak var btn_data2: UIButton!
    @IBOutlet weak var btn_data1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Init UI
        setupUI()
    }
    
    // To group UI related setups
    private func setupUI()
    {
        lbl_notification.numberOfLines = 0
        lbl_notification.text = ""
        lbl_notification.isHidden = true
        
        btn_data1.layer.cornerRadius = 8
        btn_data1.layer.borderWidth = 1
        btn_data1.layer.borderColor = UIColor.black.cgColor
        btn_data2.layer.cornerRadius = 8
        btn_data2.layer.borderWidth = 1
        btn_data2.layer.borderColor = UIColor.black.cgColor
        btn_data3.layer.cornerRadius = 8
        btn_data3.layer.borderWidth = 1
        btn_data3.layer.borderColor = UIColor.black.cgColor
    }
    
    // Data to be transferred is selected via below functions
    @IBAction func pressed_data1(_ sender: UIButton) {
        // Transfer selected data back
        if let delegate = transferDelegate{
            delegate.transferData("Data sent by the delegation is: \(sender.title(for: .normal)!)")
            
            lbl_notification.text = "\(sender.title(for: .normal)!) has been sent to the first controller, now go back."
            lbl_notification.isHidden = false
        }
    }
    @IBAction func pressed_data2(_ sender: UIButton) {
        // Transfer selected data back
        if let delegate = transferDelegate{
            delegate.transferData("Data sent by the delegation is: \(sender.title(for: .normal)!)")
            
            lbl_notification.text = "\(sender.title(for: .normal)!) has been sent to the first controller, now go back."
            lbl_notification.isHidden = false
        }
    }
    @IBAction func pressed_data3(_ sender: UIButton) {
        // Transfer selected data back
        if let delegate = transferDelegate{
            delegate.transferData("Data sent by the delegation is: \(sender.title(for: .normal)!)")
            
            lbl_notification.text = "\(sender.title(for: .normal)!) has been sent to the first controller, now go back."
            lbl_notification.isHidden = false
        }
    }
}
