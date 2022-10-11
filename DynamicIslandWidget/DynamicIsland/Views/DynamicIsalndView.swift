//
//  DynamicIsalndView.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 07.10.2022.
//

import SwiftUI
import WidgetKit

//Target Membership for this file: Widget Exension

//MARK: - Top Segment
struct DynamicIslandTopSegment: View {
    let countryFlag: String
    let countryName: String
    
    init(countryFlag: String, countryName: String) {
        self.countryFlag = countryFlag
        self.countryName = countryName
    }
    
    var body: some View {
        HStack {
            Text(countryFlag)
                .font(.system(size: 32))
            Spacer()
                .frame(width: 8)
            Text(countryName)
                .font(.system(size: 24,
                              weight: .semibold))
            Spacer()
            VPNLogo(text: "VPN is active",
                    fontSize: 15,
                    cornerRadius: 6)
        }
    }
}

struct DynamicIslandTopSegment_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            DynamicIslandTopSegment(countryFlag: "🇦🇺",
                                    countryName: "Australia")
            .previewContext(WidgetPreviewContext(family: .systemMedium))
        }
    }
}

//MARK: - Button
struct DynamicIslandButton: View {
    var body: some View {
        //Dynamic Island uses widget logic.
        //Hence you should use Links, for get user's taps and send events to application.
        //Catch ivents you can in AppDelegate or SceneDelegate.
        //There is an example in this application. (in AppDelegate)
        Link(destination: URL(string: "disable://dynamicIsland")!) {
            Text("Disable VPN")
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, minHeight: 52)
                .font(.system(size: 19, weight: .medium))
                .background(.white)
        }
    }
}

struct DynamicIslandButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            DynamicIslandButton()
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            
        }
    }
}
