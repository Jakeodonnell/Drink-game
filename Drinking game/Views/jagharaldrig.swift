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
    @IBOutlet weak var counterQuestion: UILabel!
    @IBOutlet weak var leftArrow: UIImageView!
    @IBOutlet weak var rightArrow: UIImageView!
    
    
    
    var wallpapers = ["wallpaper/1.png", "wallpaper/2.png", "wallpaper/3.png", "wallpaper/4.png", "wallpaper/5.png", "wallpaper/6.png", "wallpaper/7.png", "wallpaper/8.png", "wallpaper/9.png", "wallpaper/10.png", "wallpaper/11.png"]
    
    /*
     let wallpapers = ["wallpaper/1.jpg", "wallpaper/2.jpg", "wallpaper/3.jpg", "wallpaper/4.jpg", "wallpaper/5.jpg", "wallpaper/6.jpg", "wallpaper/7.jpg", "wallpaper/8.jpg", "wallpaper/9.jpg", "wallpaper/10.jpg", "wallpaper/11.jpg", "wallpaper/12.jpg", "wallpaper/13.jpg", "wallpaper/14.jpg", "wallpaper/15.jpg", "wallpaper/16.jpg", "wallpaper/17.jpg", "wallpaper/18.jpg", "wallpaper/19.jpg", ]
     */
    @IBOutlet weak var amountOfQuestions: UILabel!
    var questions = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    /*
    var questions = [
        "...blivit påkommen när jag kollat på porr.",
        "...onanerat utomhus.",
        "...haft sex i en bil.",
        "...tänk på någon annan under sex.",
        "...blivit påkommen när jag onanerat.",
        "...ångrat ett ligg.",
        "...haft sex med en ögonbindel.",
        "...varit otrogen.",
        "...haft sex med någon i detta rummet.",
        "...haft trekant.",
        "...sugit kuk/ fått min kuk avsugen under färd.",
        "...haft sex på en toalett.",
        "...blivit påkommen när jag legat.",
        "...använt en sexleksak under sex.",
        "...knarkat.",
        "...utnyttjat någon för pengar",
        "...gråtit på klubben.",
        "...spytt när jag varit full.",
        "...varit ett hemsläp.",
        "...fårr spärma i ögat.",
        "...haft sex i mina föräldrars säng.",
        "...haft sex med flera personer under en och samma dag."
    ]
 */
    var questionsDicks = [
           "...blivit påkommen när jag kollat på porr.",
           "...slickat fitt."
    ]
    
    let girlQuestions = [
        "...spytt när jag sugit kuk.",
        "...tagit den i röven.",
        "...haft sex med någon 10 år ändre än mig.",
        "...spottat under samlag.",
        "...sugit kuk under färd.",
        "...legat med någon med en liten snopp.",
        "...slickat fitt."
        
    ]
    
    @IBAction func next(_ sender: Any) {
        if(wallOrder != questions.count - 1){
            wallOrder = (abs(wallOrder + 1))
            
            
            UIView.transition(with: wallpaper,
                              duration: 0.75,
                              options: .transitionCrossDissolve,
                              animations: { self.wallpaper.image = UIImage(named: self.wallpapers[self.wallOrder % self.wallpapers.count]) },
                              completion: nil)
            
            
            questionsLabel.text = questions[wallOrder]
            counter = (abs(counter + 1))
            counterQuestion.text = "\((counter))"
            wallpaper.image = UIImage(named: wallpapers[wallOrder % wallpapers.count])
        }
    }
    
    @IBAction func prev(_ sender: Any) {
        if(wallOrder != 0){
            wallOrder = (abs(wallOrder - 1)) % questions.count
            
            UIView.transition(with: wallpaper,
                              duration: 0.75,
                              options: .transitionCrossDissolve,
                              animations: { self.wallpaper.image = UIImage(named: self.wallpapers[self.wallOrder % self.wallpapers.count]) },
                            completion: nil)
            
            
            questionsLabel.text = questions[wallOrder]
            counter = (abs(counter - 1))
            counterQuestion.text = "\((counter))"
            wallpaper.image = UIImage(named: wallpapers[wallOrder % wallpapers.count])
        }
    }
    
    
    @IBOutlet weak var wallpaper: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        amountOfQuestions.text = String(questions.count)
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
