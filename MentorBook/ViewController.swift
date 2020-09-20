//
//  ViewController.swift
//  MentorBook
//
//  Created by 渡辺奈実 on 2020/09/15.
//  Copyright © 2020 Watanabe nami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS, WebD"))
        
        setUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUI(){
        if(index < 0){
            index = 0
        }else if(2 < index){
            index = 2
        }
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }

    @IBAction func back(){
        index -= 1
        setUI()
    }
    
    @IBAction func next(){
        index += 1
        setUI()
        
    }

}

