//
//  DetailViewController.swift
//  MyProject16
//
//  Created by Георгий Евсеев on 8.09.22.
//
import UIKit
import WebKit

class DetailViewController: UIViewController, WKNavigationDelegate {
    var selectedWebsite: String?

    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "\(selectedWebsite!)")
        webView.load(URLRequest(url: url!))
    }
}
