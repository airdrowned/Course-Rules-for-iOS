//
//  PlatesView.swift
//  VFR Course Rules
//
//  Created by Dawn Chumley on 1/21/17.
//  Copyright © 2017 Dawn Chumley. All rights reserved.
//

import UIKit
import WebKit

class PlatesView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let pdfURL = Bundle.main.url(forResource: "CR Plates", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            do {
                let data = try Data(contentsOf: pdfURL)
                let webView = WKWebView(frame: CGRect(x:20,y:100,width:view.frame.size.width-40, height:view.frame.size.height-100))
                
                webView.load(data, mimeType: "application/pdf", characterEncodingName:"", baseURL: pdfURL.deletingLastPathComponent())
                view.addSubview(webView)
                
            }
            catch {
                // catch errors here
            }
            
        }

        // Do any additional setup after loading the view.
    }


    @IBAction func closePlates(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
