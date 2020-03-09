//
//  ViewController.swift
//  Drinking game
//
//  Created by Jake O´Donnell on 2019-08-07.
//  Copyright © 2019 Jake O´Donnell. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents.MaterialButtons_Theming
import MaterialComponents.MaterialContainerScheme
import MaterialComponents


class ViewController: UIViewController {
    
    let wallpapers = ["wallpaper/1.png", "wallpaper/2.png", "wallpaper/3.png", "wallpaper/4.png", "wallpaper/5.png", "wallpaper/6.png", "wallpaper/7.png", "wallpaper/8.png", "wallpaper/9.png", "wallpaper/10.png", "wallpaper/11.png", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg"]

    @IBOutlet weak var wall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wall.image = UIImage(named: wallpapers[5])


        // Do any additional setup after loading the view.
    }
        @IBAction func gameChooser(_ sender: Any){
        let actionSheet = MDCActionSheetController(title: "Välj vilket spel du vill spela nedan!")
        
        let actionOne = MDCActionSheetAction(title: "Pek-leken", image: UIImage(named: "Home"), handler: { (action) in print("\(action.title) action")
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let Pekleken = mainStoryBoard.instantiateViewController(withIdentifier: "Pekleken") as! Pekleken
            self.present(Pekleken, animated: true, completion: nil)
            
        })
        
        let actionThree = MDCActionSheetAction(title: "pest eller kolera", image: UIImage(named: "Email"), handler: { (action) in
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let pestellerkolera = mainStoryBoard.instantiateViewController(withIdentifier: "pestellerkolera") as! pestellerkolera
            self.present(pestellerkolera, animated: true, completion: nil)
        })
        
        let actionTwo = MDCActionSheetAction(title: "Jag har aldrig", image: UIImage(named: "Email"), handler: { (action) in
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let jagharaldrig = mainStoryBoard.instantiateViewController(withIdentifier: "jagharaldrig") as! jagharaldrig
            self.present(jagharaldrig, animated: true, completion: nil)
        })
        
        
        
        
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)
        actionSheet.addAction(actionThree)
        
        present(actionSheet, animated: true, completion: nil)
    }
   
    
    @objc func didTapNext(sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func didTapCancel(sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

