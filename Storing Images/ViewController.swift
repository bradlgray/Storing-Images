//
//  ViewController.swift
//  Storing Images
//
//  Created by Brad Gray on 7/21/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
   /* let url = NSURL(string: "http://images6.alphacoders.com/316/316963.jpg")
    
        let urlRequest = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
        
        response, data, error in
            if error != nil {
                println("There was an error")
            } else {
                let image = UIImage(data: data)
                
                self.imageView.image = image
                var documentsDirectory:String?
                
                var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
            
                if paths.count > 0 {
                    documentsDirectory = paths[0] as? String
                    
                    var savePath = documentsDirectory! + "/316963.jpg"
                    
                   // NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    self.imageView.image = UIImage(named: savePath)
                }
            }
        
        
        
        
        
        })
        
        */
        
        var documentsDirectory:String?
        var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        if paths.count > 0 {
            documentsDirectory = paths[0] as? String
            
            var savePath = documentsDirectory! + "/316963.jpg"
            
            // NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
            
            self.imageView.image = UIImage(named: savePath)
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

