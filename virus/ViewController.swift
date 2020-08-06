//
//  ViewController.swift
//  virus
//
//  Created by Bernice TSAI on 2020/8/6.
//

import UIKit

class ViewController: UIViewController {
    /*func addemoji(sticker:String)->NSMutableString{
        let emojiAttachment = NSTextAttachment()
        emojiAttachment.image = UIImage(named: sticker)
        emojiAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        content.append(NSAttributedString(attachment: emojiAttachment))
    }*/
    let oneDegree = CGFloat.pi / 180
    override func viewDidLoad() {
        super.viewDidLoad()
        //animation
        let myView = UIImageView(frame: CGRect(x: 0, y: 0, width: 201, height: 131))
        view.addSubview(myView)
        let animatedImage = UIImage.animatedImageNamed("a7f443bc5fda4ecefb077d567a1bc9a0pjmpBTDNumMNpSia-", duration: 2.5)
        myView.image = animatedImage
        myView.transform = CGAffineTransform.identity.translatedBy(x: 90, y: 100).scaledBy(x: 1, y: 1).rotated(by: oneDegree * 0)
        view.addSubview(myView)
        // text
        let content = NSMutableAttributedString(string: "在 ")
        let virusAttachment = NSTextAttachment()
        virusAttachment.image = UIImage(named: "microbe")
        virusAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        content.append(NSAttributedString(attachment: virusAttachment))
        //addemoji(sticker:"microbe")
        content.append(NSAttributedString(string: " "+"疫情期間，要勤"+" "))
        let soapAttachment = NSTextAttachment()
        soapAttachment.image = UIImage(named: "wash")
        soapAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        content.append(NSAttributedString(attachment: soapAttachment))
        //addemoji(sticker:"wash")
        let handAttachment = NSTextAttachment()
        handAttachment.image = UIImage(named: "hand")
        handAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        content.append(NSAttributedString(attachment: handAttachment))
        //addemoji(sticker: "hand")
        content.append(NSAttributedString(string: " "+"，戴"))
        let maskAttachment = NSTextAttachment()
        maskAttachment.image = UIImage(named: "pooh")
        maskAttachment.bounds = CGRect(x: 0, y: -5, width: 40, height: 40)
        content.append(NSAttributedString(attachment: maskAttachment))
        //addemoji(sticker: "pooh")
        content.append(NSAttributedString(string: "。"))
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        label.numberOfLines = 0
        label.attributedText = content
        label.transform = CGAffineTransform.identity.translatedBy(x: 100, y: 300).scaledBy(x: 1.5, y: 1.5).rotated(by: oneDegree * 0)
        view.addSubview(label)
    }


}

