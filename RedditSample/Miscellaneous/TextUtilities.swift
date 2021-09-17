//
//  TextFormattingUtility.swift
//  RedditSample
//
//  Created by Yassine Salini on 9/1/21.
//

import Foundation
import UIKit

class TextUtilities {
    
    func getTextAndImageForComment(comments:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString()
        let descString : NSMutableAttributedString = NSMutableAttributedString(string: " \(comments ?? "") Comments ")

        let commentsImage = NSTextAttachment()

        commentsImage.image = UIImage(systemName: "bubble.right.fill", withConfiguration:.none)
        
        let commentsAndString = NSAttributedString(attachment: commentsImage)

        fullString.append(commentsAndString)
        fullString.append(descString)
        //fullString.append(NSMutableAttributedString(string: "\(comments ?? "") Comments "))

        return fullString
    }

    func getTextAndImageForScore(score:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "\(score ?? "") ")


        let scoreImage = NSTextAttachment()
        //let sImage = NSTextAttachment()
        

        scoreImage.image = UIImage(systemName: "arrow.up.arrow.down", withConfiguration:.none)
        
        
        let scoreAndImage = NSAttributedString(attachment: scoreImage)
        
        fullString.append(scoreAndImage)

        return fullString
     }
    

    


}
