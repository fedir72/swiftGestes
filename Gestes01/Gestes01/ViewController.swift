//
//  ViewController.swift
//  Gestes01
//
//  Created by mac os on 28.05.2019.
//  Copyright © 2019 mac os. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        print("Tap")
    }
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        //переменная обозначающая перемещение обьекта пользователем
        let translation = sender.translation(in: self.view)
        if let view = sender.view{
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        //принимаем новую точку за ноль(исходная точка)
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func rotationAction(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view{
            //задаем угол поворота
            view.transform = view.transform.rotated(by: sender.rotation)
            //обнуляем угол поворота для принятия его как начального
            sender.rotation = 0
        }
    }
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view{
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
        
    }
    
    
}

