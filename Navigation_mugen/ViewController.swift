//
//  ViewController.swift
//  Navigation_mugen
//
//  Created by Takahiro Noguchi on 2016/05/18.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My View"
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        let myButton = UIButton(frame: CGRectMake(0,0,300,50))
        myButton.backgroundColor = UIColor.orangeColor()
        myButton.layer.masksToBounds = true
        myButton.setTitle("Count Switch", forState: .Normal)
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y: 200)
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myButton); //ボタンをviewに追加

        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50)) //Labelを作成
//        print(self.navigationController?.viewControllers.count)
        myLabel.text = String(self.navigationController?.viewControllers.count) //Labelに文字を代入
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/1.5, y: 300) //配置する座標
        self.view.addSubview(myLabel)
    }

    internal func onClickMyButton(sender: UIButton) {
        let FirstViewController =  ViewController()//移動先view
        self.navigationController?.pushViewController(FirstViewController, animated: true) //移動
        
//        let secondViewController = SecondViewController() //移動先view
//        self.navigationController?.pushViewController(secondViewController, animated: true) //移動
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

