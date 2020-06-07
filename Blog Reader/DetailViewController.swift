//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by TrungLD on 6/6/20.
//  Copyright © 2020 TrungLD. All rights reserved.
//

import UIKit
import WebKit
class DetailViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let blogWebview = self.webView {
                blogWebview.loadHTMLString((detail.value(forKey: "title") as! String), baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

