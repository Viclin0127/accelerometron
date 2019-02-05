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
        // set up our parallax code
        setupParallax()
    }

    func configuredCell(withImage image: UIImage, andDescription desc: String){
        itemImageView.image = image
        descriptionLabel.text = desc
    } // 製作一個func 用來抓取要顯示的image 跟 label文字 , 之後會再model 裡呼叫
    
    
    func setupParallax() {
        // 設定移動的上下限
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        //設定x軸水平橫移
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        //設定y軸垂直橫移
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        // 將兩種橫移效果 做成一個Group, 方便之後在ImageView一起呼叫
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
        // 最後須在 awakeFromNib 裡面呼叫這個func
    }

}
