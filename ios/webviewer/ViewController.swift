//
//  ViewController.swift
//  webviewer
//
//  Created by Furkan KESGIN on 12/11/20.
//  Copyright © 2020 Furkan KESGIN. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self as? WKNavigationDelegate
        view = webView
    }
    @IBOutlet var webview: WKWebView!
    override func viewDidLoad() {
        let url = URL(string: "http://52.236.128.206:5000/")!
        webView.load(URLRequest(url: url))
    }


}

