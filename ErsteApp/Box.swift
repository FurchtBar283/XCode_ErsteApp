//
//  Box.swift
//  ErsteApp
//
//  Created by Michael Stroh on 04.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import Foundation

class Box {
    let name: String;
    
    init(name: String) {
        self.name = name;
        print("\(name) init");
    }
    
    deinit {
        print("\(self.name) deinit");
    }
}