//
//  PLD_class.swift
//  plistData
//
//  Created by laurent aubourg on 06/04/2021.
//

import Foundation

public class PLD_class: PlistDataProtocol {
  public  var _plistManager: PlistManager
  
    //MARK: Methods
    
   public  init (fileName:String){
    _plistManager = PlistManager(name: fileName)
    }

   public  func newVar(name:String,value:Any){
        dynamicData[name] = value as AnyObject
    }
    public func getValueof(p_var:String)-> Any?{
        
         guard (dynamicData[p_var] != nil)else{
             return nil
        }
        return dynamicData[p_var]
 
    }
    public func getValueof(p_let:String)-> Any?{
        
         guard (data[p_let] != nil)else{
             return nil
        }
        return data[p_let]
 
    }
   public func setValueof(_ p_var:String,_ value:AnyObject){
        
         guard (dynamicData[p_var] != nil)else{
             return
        }
        dynamicData[p_var] = value
 
    }
    public  func saveData(key:String ,data: Dictionary<String, AnyObject>){
         
         _plistManager.saveValue(value:data as AnyObject, forKey:key)
     }
  
   
    // MARK: les variables
    public  var data:Dictionary<String, AnyObject>{
         get{
            return  _plistManager.getValueForKey(key:"data") as! Dictionary<String, AnyObject>
         }
        
     }
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
