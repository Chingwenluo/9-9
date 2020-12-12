//
//  ViewController.swift
//  9*9
//
//  Created by eric on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shownumber: UILabel!
    @IBAction func count(_ sender: UISlider) {
       
        
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        shownumber.text = "\(number)乘\(number)"
        let width = view.frame.width / 10

        var x: CGFloat = 5
           for Horizontal in 0...number {
        var y: CGFloat = 90
              for straight in 0...number {
                //產生多個label
                  let label = UILabel(frame: CGRect(x: x, y: y, width: 30 , height: 30))
                
                     if Horizontal == 0 , straight == 0 {
                        label.text = "X"
                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
                        label.textAlignment = .center //文字置中
                     }else if  Horizontal != 0, straight == 0 {
                        label.text = "\(Horizontal)"
                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
                        label.textAlignment = .center //文字置中
                     }else if Horizontal == 0, straight != 0 {
                        label.text = "\(straight)"
                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
                        label.textAlignment = .center //文字置中
                     }else{
                        label.text = "\(straight*Horizontal)"
                        label.font = UIFont.systemFont(ofSize: 17)
                        label.textAlignment = .center //文字置中
                     }
                
                if  (Horizontal > 1 && Horizontal < 5 && Horizontal+straight == 10) || (Horizontal >= 5 && Horizontal == straight && Horizontal != 9)  {
                    label.backgroundColor = UIColor.systemPink
                } else if straight == 9 ,Horizontal % 2 != 0 {
                    label.backgroundColor = UIColor.orange
                } else if straight == 9 , Horizontal != 0 , Horizontal % 2 != 1{
                    label.backgroundColor = UIColor.systemBlue
                }

                
                
                             view.addSubview(label)
                     y = y + width
                  }
                     x = x + width
             }
        
    }
    
    override func viewDidLoad() {
  
        super.viewDidLoad()
  
        //title設粗體
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 20)]
        
//        let width = view.frame.width / 10
//
//        var x: CGFloat = 5
//           for Horizontal in 0...9 {
//        var y: CGFloat = 90
//              for straight in 0...9 {
//                //產生多個label
//                  let label = UILabel(frame: CGRect(x: x, y: y, width: 30 , height: 30))
//
//                     if Horizontal == 0 , straight == 0 {
//                        label.text = "X"
//                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
//                        label.textAlignment = .center //文字置中
//                     }else if  Horizontal != 0, straight == 0 {
//                        label.text = "\(Horizontal)"
//                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
//                        label.textAlignment = .center //文字置中
//                     }else if Horizontal == 0, straight != 0 {
//                        label.text = "\(straight)"
//                        label.font = UIFont.boldSystemFont(ofSize: 17) //文字粗體
//                        label.textAlignment = .center //文字置中
//                     }else{
//                        label.text = "\(straight*Horizontal)"
//                        label.font = UIFont.systemFont(ofSize: 17)
//                        label.textAlignment = .center //文字置中
//                     }
//
//                if  (Horizontal > 1 && Horizontal < 5 && Horizontal+straight == 10) || (Horizontal >= 5 && Horizontal == straight && Horizontal != 9)  {
//                    label.backgroundColor = UIColor.systemPink
//                } else if straight == 9 ,Horizontal % 2 != 0 {
//                    label.backgroundColor = UIColor.orange
//                } else if straight == 9 , Horizontal != 0 , Horizontal % 2 != 1{
//                    label.backgroundColor = UIColor.systemBlue
//                }
//
//
//
//                             view.addSubview(label)
//                     y = y + width
//                  }
//                     x = x + width
//             }
        }// Do any additional setup after loading the view.
        

}

