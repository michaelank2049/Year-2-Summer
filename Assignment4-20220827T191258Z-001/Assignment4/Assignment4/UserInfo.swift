//
//  UserInfo.swift
//  Assignment4
//
//  Created by Lankford, Michael A on 7/28/21.
//

import Foundation

class userInfo{
    
    var userName: String
    var highSpeed: Int
    
    init(userName: String, highSpeed: Int){
        self.userName = userName
        self.highSpeed = highSpeed
        
    }
    
    func returnUserName() -> String{
        return userName
    }
    
    func returnSpeed() -> Int{
        return highSpeed
    }
}
