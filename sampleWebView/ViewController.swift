//
//  ViewController.swift
//  sampleWebView
//
//  Created by Eriko Ichinohe on 2016/06/06.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

     
        
    }
    
    //Returnキーが押されたときに発動するメソッド
    @IBAction func tapReturn(sender: UITextField) {
        
        var inputText:String = sender.text!
        
        if inputText == "" {
            //空の場合はアラートを表示して入力を促す
            //アラートを作る
            var alertController = UIAlertController(title: "URLが空です", message: "何か入力してください", preferredStyle: .Alert)
            
            //OKボタンを追加
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:nil ))

            //アラートを表示する
            presentViewController(alertController, animated: true, completion: nil)

            
            
            
        }else{
            
            //表示したいページのURLをNSURL型に代入
            var myURL = NSURL(string: inputText)
            
            //webViewに指定するためNSURLRequest型のオブジェクトを生成
            var myURLReq = NSURLRequest(URL: myURL!)
            
            //URLRequestをWebViewにセット
            myWebView.loadRequest(myURLReq)
            
            //TODO:テキストフィールドを一つ設置し、そこに入力されたURLのページをwebViewに表示するようにカスタマイズしましょう
            //(Returnを押したら、ページを表示するように変更する)
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

