//
//  Subview.swift
//  Subviews
//
//  Created by Rajan Fernandez on 9/08/17.
//  Copyright © 2017 Rajan Fernandez. All rights reserved.
//

import UIKit

@IBDesignable
class Subview: UIView {
    
    @IBOutlet
    private var contentView: UIView!
    
    @IBOutlet
    private var titleLabel: UILabel!
    
    @IBInspectable
    var title: String = ""{
        didSet {
            self.titleLabel.text = self.title
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        _ = Bundle(for: Subview.self).loadNibNamed("Subview", owner: self, options: nil)
        self.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _ = Bundle(for: Subview.self).loadNibNamed("Subview", owner: self, options: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        /*
         translatesAutoresizingMaskIntoConstraints must be set to false here
         otherwise Auto Layout contrainst will be made automatically to constain
         the content view when it is added to the view.
         */
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        /*
         Add the content view as a subview and constrain it on all sides.
         */
        self.addSubview(contentView)
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
