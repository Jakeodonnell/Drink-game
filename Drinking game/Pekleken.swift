//
//  Pekleken.swift
//  Drinking game
//
//  Created by Jake O´Donnell on 2019-08-07.
//  Copyright © 2019 Jake O´Donnell. All rights reserved.
//

import UIKit
import MaterialComponents

class Pekleken: UIViewController {

    var wallOrder:Int = 0
    var counter:Int = 1
    
    @IBOutlet weak var text: UILabel!
    
    let wallpapers = ["wallpaper/1.jpg", "wallpaper/2.jpg", "wallpaper/3.jpg", "wallpaper/4.jpg", "wallpaper/5.jpg", "wallpaper/6.jpg", "wallpaper/7.jpg", "wallpaper/8.jpg", "wallpaper/9.jpg", "wallpaper/10.jpg", "wallpaper/11.jpg", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg", ]
    
    @IBOutlet weak var wallpaper: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        wallpaper.image = UIImage(named: wallpapers[wallOrder])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func menu(_ sender: Any) {
        let actionSheet = MDCActionSheetController(title: "Välj vilket spel du vill spela nedan!")
        
        let actionOne =
            
            MDCActionSheetAction(title: "pest eller kolera", image: UIImage(named: "Email"), handler: { (action) in
                
                let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
                let pestellerkolera = mainStoryBoard.instantiateViewController(withIdentifier: "pestellerkolera") as! pestellerkolera
                self.present(pestellerkolera, animated: true, completion: nil)
            
        })
    let actionTwo =
        
        MDCActionSheetAction(title: "Jag har aldrig", image: UIImage(named: "Email"), handler: { (action) in
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let jagharaldrig = mainStoryBoard.instantiateViewController(withIdentifier: "jagharaldrig") as! jagharaldrig
            self.present(jagharaldrig, animated: true, completion: nil)
        
       
        })
        

             let actionThree =
            MDCActionSheetAction(title: "Start", image: UIImage(named: "Email"), handler: { (action) in
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let ViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(ViewController, animated: true, completion: nil)
        })
        
        
        
        
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)
        actionSheet.addAction(actionThree)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
