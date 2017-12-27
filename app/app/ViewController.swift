//
//  ViewController.swift
//  app
//
//  Created by 小嶋雄大 on 2017/12/27.
//  Copyright © 2017年 小嶋雄大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let add : UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red // 背景を赤に
        
        // ボタンの設定
        add.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        add.backgroundColor = UIColor.blue
        
        add.layer.masksToBounds = true
        // タイトルを設定する（通常時）
        add.setTitle("Test", for: UIControlState.normal)
        add.setTitleColor(UIColor.purple, for: UIControlState.normal)
        
        // タイトルを設定する（ボタンがハイライトされた時）
        add.setTitle("Push", for: UIControlState.highlighted)
        add.setTitleColor(UIColor.black, for: UIControlState.highlighted)
        
        // コーナーの半径を設定する
        add.layer.cornerRadius = 10.0
        
        // ボタンの位置を指定する
        add.layer.position = CGPoint(x: self.view.frame.width / 2, y: 400)
        // タグを設定する
        add.tag = 1
        
        // イベントを追加する
        add.addTarget(self, action: #selector(self.onClickadd(sender:)), for: .touchUpInside)
        
        // ボタンをViewに追加する
        self.view.addSubview(add)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func onClickadd(sender: UIButton) {

        print("success")
    }

}

