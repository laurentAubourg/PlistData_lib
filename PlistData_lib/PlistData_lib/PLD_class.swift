//
//  PLD_class.swift
//  plistData
//
//  Created by laurent aubourg on 06/04/2021.
//

import Foundation

public class PLD_class: PlistDataProtocol {
  public  var _plistManager: PlistManager
    
   public  init (fileName:String){
    _plistManager = PlistManager(name: fileName)
    }
    public  func saveData(key:String ,data: Dictionary<String, AnyObject>){
         
         _plistManager.saveValue(value:data as AnyObject, forKey:key)
     }
    public  var data:Dictionary<String, AnyObject>{
         get{
            return  _plistManager.getValueForKey(key:"data") as! Dictionary<String, AnyObject>
         }
        
     }
    // MARK: les variables
    
     public var dynamicData:Dictionary<String, AnyObject>{
         get{
             return _plistManager.getValueForKey(key:"dynamicData") as! Dictionary<String, AnyObject>
         }
         set{
         _plistManager.saveValue(value:newValue  as AnyObject, forKey:"dynamicData")
         saveData(key:"dynamicData" ,data: (newValue  as AnyObject) as! Dictionary<String, AnyObject>)
         }
     }
}
