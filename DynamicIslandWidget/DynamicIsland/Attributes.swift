//
//  Attributes.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 05.10.2022.
//

import Foundation
import ActivityKit

//Target Membership for this file: UIKit App + Widget Exension

@available(iOS 16.1, *)
struct Attributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable { //You can append your changable parameters in ContentState. And call it "context.state.YOUR_PARAMETER_NAME"
        var contryFlag: String
        var countryName: String
    }
    
    //You can append not changable parametrs here. And call it "context.attributes.YOUR_PARAMETER_NAME"
}
