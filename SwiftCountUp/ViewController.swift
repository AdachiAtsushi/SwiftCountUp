//
//  ViewController.swift
//  SwiftCountUp
//
//  Created by 安達篤史 on 2020/06/06.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 画面項目の宣言
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    // 初期表示時の挙動
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countUpLabel.text = "0"

    }
    
    // ===== ボタン押下時の挙動 =====
    
    // プラスボタン押下時の挙動
    // カウントをインクリメントし、ラベルに反映させる。
    @IBAction func plus(_ sender: Any) {
        
        count += 1
        
        countUpLabel.text = String(count)
        
        // カウントが10以上だった場合、文字色を黄色に変更
        if count >= 10 {
            changeTextColor()
        }
        
    }
    
    // マイナスボタン押下時の挙動
    // カウントをデクリメントし、ラベルに反映させる。
    @IBAction func minus(_ sender: Any) {
        
        count -= 1
        
        countUpLabel.text = String(count)
        
        // カウントが0以下だった場合、文字色を白に変更
        if count <= 0 {
            resetTextColor()
        }
    }
    
    // テキストカラーを変更する関数を定義
    func changeTextColor() {
        // ラベルを黄色に変更
        countUpLabel.textColor = .yellow
        
    }
    
    // テキストカラーを初期状態に戻す関数を定義
    func resetTextColor() {
        // ラベルを白色に変更
        countUpLabel.textColor = .white
    }
    

}

