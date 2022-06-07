//
//  ViewController.swift
//  HW2
//
//  Created by GLaDOS on 29.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements
    @IBOutlet weak var btn_transferData: UIButton!
    @IBOutlet weak var lbl_TransferredData: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Init UI
        setupUI()
    }
    
    // To group UI related setups
    private func setupUI(){
        lbl_TransferredData.numberOfLines = 0
        lbl_TransferredData.text = "Awaiting data.."
        
        btn_transferData.layer.cornerRadius = 8
        btn_transferData.layer.borderWidth = 1
        btn_transferData.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func pressed_transferDataBtn(_ sender: UIButton) {
        // Navigate to the next page
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        // Assign delegate
        VC.transferDelegate = self
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}

// Delegate func definition
extension ViewController:DataTransferDelegate{
    func transferData(_ data: String) {
        lbl_TransferredData.text = data
    }
}


