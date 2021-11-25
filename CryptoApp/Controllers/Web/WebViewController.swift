//
//  WebViewController.swift
//  NewsApiOrg
import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    var urlString = String()
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Web"
        guard let url = URL(string: urlString) else {
            //return
            print("error", urlString)
            return
        }
        
        webView.load(URLRequest(url: url))
        print("WVC url: ", url)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish navigation")
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("didStartProvisionalNavigation")
    }


}
