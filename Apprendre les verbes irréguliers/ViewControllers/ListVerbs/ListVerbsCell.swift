//
//  ListVerbsCell.swift
//  Apprendre les verbes irréguliers
//
//  Created by Lauriane Mollier on 23/09/2018.
//  Copyright © 2018 Lauriane Mollier. All rights reserved.
//

import UIKit

class ListVerbsCell: UITableViewCell {
    
    // Setttings

    
    
    @IBOutlet weak var cellHeader: UIView!
    @IBOutlet weak var cellContent: UIView!
    @IBOutlet weak var cellFooter: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    var userLearningVerb: UserLearningVerb!
    
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var stack: UIStackView!
    
    @IBOutlet weak var infinitiveLabel: UILabel!
    @IBOutlet weak var traductionLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var simplePastLabel: UILabel!
    @IBOutlet weak var pastParticipleLabel: UILabel!


    @IBOutlet weak var informationLabel: UILabel!

    
    
    var cellFooterIsHidden: Bool {
        set {
            if newValue{
                self.stack.removeArrangedSubview(self.cellFooter)
                self.cellFooter.isHidden = true
            } else{
                self.stack.addArrangedSubview(self.cellFooter)
                self.cellFooter.isHidden = false
            }
        }
        get{
            return self.cellFooterIsHidden
        }
    }
    
//    private func hideCellFooter(_ ){
//        if let footer = self.cellFooter{
//            self.stack.removeArrangedSubview(footer)
//        }
//    }
    
    func setUp(userLearningVerb: UserLearningVerb){
        self.userLearningVerb = userLearningVerb
        self.infinitiveLabel.text = userLearningVerb.verb.infinitive()
        self.presentLabel?.text = userLearningVerb.verb.present()
        self.simplePastLabel?.text = userLearningVerb.verb.simplePast()
        self.pastParticipleLabel?.text = userLearningVerb.verb.pastParticiple()
        self.traductionLabel?.text = userLearningVerb.verb.translation(Lang.fr) // TODO
        
        self.levelLabel?.text = userLearningVerb.verb.level.rawValue
    
        self.containerView.layer.cornerRadius = 7
        self.informationLabel?.layer.cornerRadius = 5
        self.informationLabel?.layer.borderWidth = 1
        self.informationLabel?.layer.borderColor = UIColor.lightGray.cgColor
        
        
        self.cellFooterIsHidden = userLearningVerb.userProgression.isNotInReviewList()
    }
    
    
    
    private func hideCellContent(){
        if let content = self.cellContent{
            
        }
        
    }
    



    
}
