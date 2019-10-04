//
//  Pokemon.swift
//  BulbasaurOrPikachu
//
//  Created by epita on 04/10/2019.
//  Copyright © 2019 Epita. All rights reserved.
//

import UIKit

class Pokemon: NSObject {
    var name: String
    var description_: String
    
    init(name:String, description_:String) {
        self.name = name
        self.description_ = description_
    }
}
