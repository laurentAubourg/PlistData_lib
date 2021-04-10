//
//  DataProtocol.swift
//  Aubourg Laurent
//  
//      PlistDataProtocol
// ------------------------
//  Created by Laurent Aubourg on 01/04/2021
//  Copyright © 2018 Aubourg Laurent 01/04/2021. All rights reserved.
//

import Foundation

//MARK: ------- PROTOCOL PlistDataProtocol ---------
protocol PlistDataProtocol: class{
    var _plistManager :  PlistManager {get set}
    var data:Dictionary<String,AnyObject>{get }
    var dynamicData:Dictionary<String,AnyObject>{get set}
    func saveData(key:String ,data: Dictionary<String, AnyObject>)
}
