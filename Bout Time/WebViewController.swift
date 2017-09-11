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
    @IBOutlet weak var webView: UIWebView!
    var eventClicked: event?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = eventClicked?.webViewURL {
            loadRequestIntoWebView(url: url)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Used to load a URL into the web View
    func loadRequestIntoWebView(url: URL) {
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    }
    

}
