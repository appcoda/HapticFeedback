//
//  ViewController.swift
//  HapticFeedback
//
//  Created by Charles Truluck on 7/25/17.
//  Copyright © 2017 Porter-Gaud School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let impact = UIImpactFeedbackGenerator()
    let selection = UISelectionFeedbackGenerator()
    let notification = UINotificationFeedbackGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onePressed(_ sender: UIButton) {
        impact.impactOccurred()
    }
    
    @IBAction func twoPressed(_ sender: UIButton) {
        selection.selectionChanged()
    }
    
    @IBAction func successPressed(_ sender: Any) {
        notification.notificationOccurred(.success)
    }
    
    @IBAction func warningPressed(_ sender: Any) {
        notification.notificationOccurred(.warning)
    }
    
    @IBAction func errorPressed(_ sender: Any) {
        notification.notificationOccurred(.error)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

