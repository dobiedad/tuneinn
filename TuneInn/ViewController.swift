//  ViewController.swift

import Cocoa
import WebKit

class ViewController: NSViewController {
    @IBOutlet weak var webView: WKWebView!
    
    let localeStorage = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        var url = "https://tunein.com"
        if let lastUrl = localeStorage.string(forKey: "lastUrl") {
            url = lastUrl
        }

        webView.load(URLRequest(url: URL(string: url)!))
    }
    
    @IBAction func reloadClicked(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func terminateApplication(_ sender: Any) {
        localeStorage.set(webView.url?.absoluteString, forKey: "lastUrl")
        NSApplication.shared.terminate(self)
    }
}
