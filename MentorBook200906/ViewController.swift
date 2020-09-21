//
//  ViewController.swift
//  MentorBook200906
//
//  Created by Shinya  on 2020/09/06.
//  Copyright © 2020 Shinya . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView : UIImageView!
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var courseLabel : UILabel!
    
    var index: Int = 0
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName:"ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
        
        setUI()
    }
    
    @IBAction func behind() {
        index = index - 1
        setUI()
    }

    @IBAction func forward() {
        index = index + 1
        setUI()
    }

}

