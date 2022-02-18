//
//  AboutViewController.swift
//  BullsEyeOne
//
//  Created by Gospodi on 18.02.2022.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}

