//
//  Escolhidos.swift
//  ElectionAPP
//
//  Created by peppermini on 6/13/16.
//  Copyright © 2016 RMPM. All rights reserved.
//

import Foundation

class Escolhidos {
    
    private var _name: String!
    private var _CSVID: Int!
 
    var name: String {
        return _name
    }
    
    var CSVID: Int {
        return _CSVID
    }
    
    init (name: String, CSVID: Int) {
        self._name = name
        self._CSVID = CSVID
        
    }




}