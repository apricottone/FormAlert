//
//  ViewController.swift
//  DisplayAlert
//
//  Created by mizoz on 2021/11/16.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        alert.title = "ここにタイトル"
        alert.message = "メッセージ"
        
        alert.addTextField(configurationHandler: {(textField) -> Void in
            textField.delegate = self
            
        })
        
        //追加ボタン
        alert.addAction(
            UIAlertAction(
                title: "追加",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        //キャンセルボタン
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                handler: {(action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        //アラートが表示されるごとにprint
        self.present(
            alert,
            animated: true,
            completion: {
                print("アラートが表示された")
            })
    }
    
    func hello(_ msg:String){
        print(msg)
    }
    
}



