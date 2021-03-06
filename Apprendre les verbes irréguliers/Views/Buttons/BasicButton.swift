//
//  BasicButton.swift
//  Apprendre les verbes irréguliers
//
//  Created by Lauriane Mollier on 23/08/2018.
//  Copyright © 2018 Lauriane Mollier. All rights reserved.
//

import UIKit

@IBDesignable
class BasicButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup(){
        self.layer.borderWidth = 1
        self.layer.borderColor = self.backgroundColor?.cgColor
        layout()
    }
    
    func layout(){
        self.layer.cornerRadius = self.frame.height / 2
    }

    
}
