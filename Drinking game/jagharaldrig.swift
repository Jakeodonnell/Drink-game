//
//  jagharaldrig.swift
//  Drinking game
//
//  Created by Jake O´Donnell on 2019-08-07.
//  Copyright © 2019 Jake O´Donnell. All rights reserved.
//

import UIKit
import MaterialComponents

class jagharaldrig: UIViewController {
    var wallOrder:Int = 0
    var counter:Int = 1

    @IBOutlet weak var Fragor: UILabel!
    
    @IBOutlet weak var questionsLabel: UILabel!
    
    let wallpapers = ["wallpaper/1.jpg", "wallpaper/2.jpg", "wallpaper/3.jpg", "wallpaper/4.jpg", "wallpaper/5.jpg", "wallpaper/6.jpg", "wallpaper/7.jpg", "wallpaper/8.jpg", "wallpaper/9.jpg", "wallpaper/10.jpg", "wallpaper/11.jpg", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg"]
    
    let questions = ["...tagit den i röven.",
                     "...blivit påkommen när jag kollat på porr.",
                     "...runkat åt en animerad karaktär.",
                     "...släppt en fis och sen skyllt denna gasattack på någon annan.",
                     "...fejkat en orgasm.",
                     "...blivit påkommen när jag onanerat.",
                     "...ljugit om att maten jag blivit bjuden på smakade gott när jag fick frågan.",
                     "...ljugit om att jag kan spela ett musikinstrument.",
                     "...druckit så mycket att jag skitit ned mig.",
                     "...tyckt att min spegelbild varit så vacker att jag kysst den.",
                     "...vaknat upp bredvid någon som närmast liknade ett troll ifrån träsket.", "12", "13", "14", "15", "16", "17", "18", "19"]
    
    
    @IBOutlet weak var counterQuestion: UILabel!
    
    @IBOutlet weak var leftArrow: UIImageView!
    @IBOutlet weak var rightArrow: UIImageView!
    
    @IBAction func next(_ sender: Any) {
         if(wallOrder != 10){
              wallOrder = (abs(wallOrder + 1))
              questionsLabel.text = questions[wallOrder]
              counter = (abs(counter + 1))
              counterQuestion.text = "\((counter))"
              wallpaper.image = UIImage(named: wallpapers[wallOrder])
              print(wallOrder)
              }
    }
    
    @IBAction func prev(_ sender: Any) {
         if(wallOrder != 0){
              wallOrder = (abs(wallOrder - 1)) % 11
              questionsLabel.text = questions[wallOrder]
              counter = (abs(counter - 1)) % 11
              counterQuestion.text = "\((counter))"
              wallpaper.image = UIImage(named: wallpapers[wallOrder])
              }
              print(wallOrder)

    }
    
    
    @IBOutlet weak var wallpaper: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        questionsLabel.text = questions[wallOrder]
        counterQuestion.text = "\(counter)"
        wallpaper.image = UIImage(named: wallpapers[wallOrder])
        leftArrow.image = UIImage(named: "wallpaper/left.png")
        rightArrow.image = UIImage(named: "wallpaper/right.png")
    }
    
    @IBAction func menu(_ sender: Any) {
        let actionSheet = MDCActionSheetController(title: "Välj vilket spel du vill spela nedan!")
        
        let actionOne = MDCActionSheetAction(title: "Pekleken", image: UIImage(named: "Home"), handler: { (action) in print("\(action.title) action")
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let Pekleken = mainStoryBoard.instantiateViewController(withIdentifier: "Pekleken") as! Pekleken
            self.present(Pekleken, animated: true, completion: nil)
            
        })
        
         let actionTwo = MDCActionSheetAction(title: "pest eller kolera", image: UIImage(named: "Email"), handler: { (action) in
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let pestellerkolera = mainStoryBoard.instantiateViewController(withIdentifier: "pestellerkolera") as! pestellerkolera
            self.present(pestellerkolera, animated: true, completion: nil)
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
