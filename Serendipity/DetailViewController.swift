//
//  DetailViewController.swift
//  Serendipity
//
//  Created by Pablo coco on 2016. 4. 1..
//  Copyright © 2016년 cocoplanners. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController, UIWebViewDelegate{
    
    @IBOutlet var navibar: UINavigationItem!
    
    @IBOutlet var ww: UIWebView!
    
    var pvo : PostVO? = nil
    
    override func viewDidLoad() {
//        NSLog("gogo")
//        self.navibar.title = self.pvo?.place
        NSLog("linkurl = \(self.pvo?.detail), detail=\(self.pvo?.detail)")
        let req = NSURLRequest(URL: NSURL(string: (self.pvo?.detail)!)!)
        self.ww.loadRequest(req)
    }
    
}
