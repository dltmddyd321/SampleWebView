//
//  ViewController.swift
//  SampleWebView
//
//  Created by 이승용 on 2021/06/20.
//

import UIKit
import WebKit //WebView 사용을 위한 import

class ViewController: UIViewController,WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1. url string
        // 2. url -> request
        // 3. req -> load
        
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString){
            let urlReq = URLRequest(url: url)
            WebViewMain.load(urlReq)
        }
        
    }

}

