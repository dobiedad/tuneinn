//  ViewController.swift

import Cocoa
import WebKit

class ViewController: NSViewController {
    @IBOutlet weak var webView: WKWebView!
    
  
    let url = "https://tunein.com"

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)
    }
    
    @IBAction func reloadClicked(_ sender: Any) {
        webView.reload()
      }
}
