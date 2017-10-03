//
//  WebViewController.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/09/01.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    // Dismisses the Web View
    @IBAction func dismisWebView() {
        dismiss(animated: true, completion: nil)
    }
    
    // Variables
    var request: URLRequest? = nil
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        if let urlRequest = request {
            webView.loadRequest(urlRequest)
        }
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
