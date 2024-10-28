//
//  ViewController.swift
//  GetWithNationalId
//
//  Created by GetGroup on 28/10/2024.
//

import UIKit
import SessionWithNationalId

class ViewController: UIViewController, SessionCreatable {
    
    @IBOutlet weak var nationalIdTextField: UITextField!
    var sessionHandler: CreateSessionHandler!
    override func viewDidLoad() {
        super.viewDidLoad()
        sessionHandler = CreateSessionHandler(delegate: self)
    }
    
    @IBAction func createSessionAction(_ sender: UIButton) {
        guard let text = nationalIdTextField.text, !text.isEmpty else {
            
            return
        }
        sessionHandler.createSession(with: "1714787270")
    }
}


extension ViewController {
    func didsessionCreated(data: String) {
        print("Hello\(data)")
    }
    
    func didSendError(error: String) {
        print("error\(error)")
    }
}
