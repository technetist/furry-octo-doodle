//
//  ViewController.swift
//  image grab
//
//  Created by Adrien Maranville on 3/25/17.
//  Copyright © 2017 Adrien Maranville. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        if documentsPath.count > 0 {
            let documentsDirectory = documentsPath[0]
            let restorePath = documentsDirectory + "/cat.jpg"
            
            imgView.image = UIImage(contentsOfFile: restorePath)
           
        }
        
        
        
        /*
        
        let url = URL(string: "https://s-media-cache-ak0.pinimg.com/736x/07/c3/45/07c345d0eca11d0bc97c894751ba1b46.jpg")!
        
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print(error!)
            } else {
                if let data = data {
                    if let catImage = UIImage(data: data){
                        self.imgView.image = catImage
                        
                        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                        if documentsPath.count > 0 {
                            let documentsDirectory = documentsPath[0]
                            let savePath = documentsDirectory + "/cat.jpg"
                                
                            do {
                                try UIImageJPEGRepresentation(catImage, 1)?.write(to: URL(fileURLWithPath: savePath))
                            } catch {
                                print("save image failed")
                            }
                        }
                    }
                }
            }
        }
        task.resume()
 
 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

