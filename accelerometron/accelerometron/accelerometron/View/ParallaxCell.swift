//
//  ParallaxCell.swift
//  accelerometron
//
//  Created by YuanHungLin on 2019/2/5.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    // 將View 裡面的物件 跟 寫code的區塊 做連結
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up our parallax code later
    }

    func configuredCell(withImage image: UIImage, andDescription desc: String){
        itemImageView.image = image
        descriptionLabel.text = desc
    } // 製作一個func 用來抓取要顯示的image 跟 label文字 , 之後會再model 裡呼叫
    
    
    func setupParallax() {
        
    }

}
