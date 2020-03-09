//
//  pestellerkolera.swift
//  Drinking game
//
//  Created by Jake O´Donnell on 2019-08-07.
//  Copyright © 2019 Jake O´Donnell. All rights reserved.
//

import UIKit
import MaterialComponents

class pestellerkolera: UIViewController {
    
    /*
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
     */
    var wallOrder:Int = 0
    var counter:Int = 1
    
    var pestFraga = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    var koleraFraga = ["1","2","3","4","5","6","7","8","9","10","11","12"]

    /*
    let pestFraga = ["Aldrig mer åka buss","Smaklökar i anus","Alltid uppklädd i finkläder", "Få tio miljoner kronor om tio år", "Vakna upp varje morgon insmetad i gröt", "Kunna gå på vatten", "Alltid glömma dina lösenord", "Endast kunna prata och förstå finska i ett år ", "Raka av dina ögonbryn", "Gå in på ett gym och påpeka hur svaga alla är","11"]
    
    let koleraFraga = ["Aldrig mer åka tåg","Stoppa ner dina fingrar i en köttkvarn","alltid iklädd mjuksbyxor och en skön tröja", "Få fem miljoner kronor idag", "Vakna upp varje morgon utanför din ytterdörr", "Kunna andas under vattnet", "Alltid glömma vad dina vänner heter", "Alltid bryta på finska", "Att dina ögonfransar ramlar av", "gå naken på ett spinningpass?","11"]
    */
    @IBOutlet weak var counterQuestion: UILabel!
     let wallpapers = ["wallpaper/1.png", "wallpaper/2.png", "wallpaper/3.png", "wallpaper/4.png", "wallpaper/5.png", "wallpaper/6.png", "wallpaper/7.png", "wallpaper/8.png", "wallpaper/9.png", "wallpaper/10.png", "wallpaper/11.png", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg"]
    /*
    let wallpapers = ["wallpaper/1.jpg", "wallpaper/2.jpg", "wallpaper/3.jpg", "wallpaper/4.jpg", "wallpaper/5.jpg", "wallpaper/6.jpg", "wallpaper/7.jpg", "wallpaper/8.jpg", "wallpaper/9.jpg", "wallpaper/10.jpg", "wallpaper/11.jpg", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg", ]*/
    
    @IBOutlet weak var wallpaper: UIImageView!
    
    @IBOutlet weak var pestknapp: UIButton!
    @IBOutlet weak var koleraknapp: UIButton!

    @IBAction func colera(_ sender: Any) {
        if(wallOrder != 10){
            wallOrder = (abs(wallOrder + 1))
            UIView.transition(with: wallpaper,
            duration: 0.75,
            options: .transitionCrossDissolve,
            animations: { self.wallpaper.image = UIImage(named: self.wallpapers[self.wallOrder]) },
            completion: nil)
            pestknapp.setTitle(pestFraga[wallOrder], for: .normal)
             koleraknapp.setTitle(koleraFraga[wallOrder], for: .normal)
            counter = (abs(counter + 1))
            counterQuestion.text = "\((counter))"
            wallpaper.image = UIImage(named: wallpapers[wallOrder])
            print(wallOrder)
        }
    }
    @IBAction func pest(_ sender: Any) {
        if(wallOrder != 10){
            wallOrder = (abs(wallOrder + 1))
           
            
            UIView.transition(with: wallpaper,
            duration: 0.75,
            options: .transitionCrossDissolve,
            animations: { self.wallpaper.image = UIImage(named: self.wallpapers[self.wallOrder]) },
            completion: nil)
            koleraknapp.setTitle(koleraFraga[wallOrder], for: .normal)
            pestknapp.setTitle(pestFraga[wallOrder], for: .normal)
            counter = (abs(counter + 1))
            counterQuestion.text = "\((counter))"
            wallpaper.image = UIImage(named: wallpapers[wallOrder])
            print(wallOrder)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        koleraknapp.setTitle(koleraFraga[wallOrder], for: .normal)
        pestknapp.setTitle(pestFraga[wallOrder], for: .normal)
        counterQuestion.text = "\(counter)"
        wallpaper.image = UIImage(named: wallpapers[wallOrder])
    }
    
    @IBAction func menu(_ sender: Any) {
        let actionSheet = MDCActionSheetController(title: "Välj vilket spel du vill spela nedan!")
        
        let actionOne = MDCActionSheetAction(title: "Pekleken", image: UIImage(named: "Home"), handler: { (action) in print("\(action.title) action")
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
            let Pekleken = mainStoryBoard.instantiateViewController(withIdentifier: "Pekleken") as! Pekleken
            self.present(Pekleken, animated: true, completion: nil)
            
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
