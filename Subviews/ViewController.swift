//
//  ViewController.swift
//  Subviews
//
//  Created by Rajan Fernandez on 9/08/17.
//  Copyright © 2017 Rajan Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // One subview is already loaded in the nib.
        
        // Add a second one programatically, using init(frame:)
        let subview = Subview(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        /*
         Before adding the subview ensure
         translatesAutoresizingMaskIntoConstraints is set to false, otherwise
         the layout will be overconstrained by the automatically added 
         constraints.
         */
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        /*
         Add the view as a subview and constrain it on.
         */
        self.view.addSubview(subview)
        subview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        subview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        subview.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
    }

}

