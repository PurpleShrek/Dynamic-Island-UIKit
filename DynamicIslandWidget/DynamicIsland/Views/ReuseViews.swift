//
//  ReuseViews.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 06.10.2022.
//

import SwiftUI

//Target Membership for this file: Widget Exension

struct VPNLogo: View {
    let text: String
    let fontSize: CGFloat
    let cornerRadius: CGFloat
    
    init(text: String, fontSize: CGFloat, cornerRadius: CGFloat) {
        self.text = text
        self.fontSize = fontSize
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("lockScreenText"))
            .font(.system(size: fontSize, weight: .medium))
            .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color("lockScreenText"))
            )
    }
}
