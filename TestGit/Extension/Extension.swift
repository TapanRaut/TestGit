//
//  Extension.swift
//  InstagramCopy
//
//  Created by TAPAN  RAUT on 07/02/20.
//  Copyright © 2020 TAPAN  RAUT. All rights reserved.
//

import UIKit

extension UIView{
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingRight: CGFloat, paddingBottom:CGFloat, width:CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0{
                   heightAnchor.constraint(equalToConstant: height).isActive = true
               }
        
    }
}

var imageCache = [String: UIImage]()

extension UIImageView{
    
    func loadImage(with urlString: String) {
        
        
        //check if image exist in image cache
        
        if let cachedImage = imageCache[urlString]{
            self.image = cachedImage
            return
        }
        
        // if image does not exist in image cache
        
        // url for image location
        
        guard let url = URL(string: urlString) else {return}
        
        //fetch contents of url
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            // Handle error
            
            if let error = err{
                print("Failed to load image with error", error.localizedDescription)
            }
            guard let imageData = data else{return}
            
            //create image using imagedata
            
            let photoImage = UIImage(data: imageData)
            
            //set key and value for image cache
            
            imageCache[url.absoluteString] = photoImage
            
            //set image
            
            DispatchQueue.main.async {
                self.image = photoImage
            }
        }.resume()
        
        
    }
}
