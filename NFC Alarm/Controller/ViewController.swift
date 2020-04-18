//
//  ViewController.swift
//  NFC Alarm
//
//  Created by Olivia Li on 2020-04-17.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import UIKit
import CoreNFC

class ViewController: UIViewController {
    
    var session: NFCNDEFReaderSession?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func scanTapped(_ sender: Any) {
        session = NFCNDEFReaderSession(delegate: self, queue: DispatchQueue.main, invalidateAfterFirstRead: false)
        session?.alertMessage = "Hold your iPhone near the item to learn more about it."
        session?.begin()
    }
    
}



