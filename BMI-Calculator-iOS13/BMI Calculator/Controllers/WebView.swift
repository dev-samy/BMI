//
//  WebView.swift
//  BMI Calculator
//
//  Created by Abdelrahman Samy on 21/12/2019.
//  Copyright © 2019 Abdelrahman Samy. All rights reserved.
//

import UIKit
import WebKit

class WebView: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1
           let url = URL(string: "https://www.healthline.com/nutrition/27-health-and-nutrition-tips")!
           webView.load(URLRequest(url: url))
             
           // 2
           let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
           //toolbarItems = [refresh]
          // navigationController?.isToolbarHidden = false
       
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = "Health Tips"
    }

    
    
   

}
