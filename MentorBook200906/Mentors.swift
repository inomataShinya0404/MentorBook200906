//
//  Mentors.swift
//  MentorBook200906
//
//  Created by Shinya  on 2020/09/06.
//  Copyright © 2020 Shinya . All rights reserved.
//

import UIKit

class Mentor {
    
    var name : String!
    var course : String!
    var imageName : String!
    
    init(name:String, course:String, imageName:String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
