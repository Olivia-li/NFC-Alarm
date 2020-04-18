//
//  ViewController - CoreNFC.swift
//  NFC Alarm
//
//  Created by Olivia Li on 2020-04-17.
//  Copyright © 2020 Olivia Li. All rights reserved.
//

import Foundation
import CoreNFC
import UIKit
import AVFoundation

extension ViewController: NFCNDEFReaderSessionDelegate{
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("The session was invalidated: \(error.localizedDescription)")
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        var result = ""
        for payload in messages[0].records {
            result += String.init(data: payload.payload.advanced(by: 3), encoding: .utf8)! // 1
        }
    
        DispatchQueue.main.async {
            print(result)
        }
    }
    
}
