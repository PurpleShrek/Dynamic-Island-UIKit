//
//  WidgetDemo.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 05.10.2022.
//

import SwiftUI
import WidgetKit

//Target Membership for this file: Widget Exension

@main
struct WidgetDemo: WidgetBundle {
    var body: some Widget {
        VPNStatusWidget()
    }
}

struct VPNStatusWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: Attributes.self) { context in
            
            //you SHOULD definitely implement a widget for the lock screen to be able to use a dynamic island !
            
            LockScreenView(countryFlag: context.state.contryFlag,
                           countryName: context.state.countryName)
        } dynamicIsland: { context in
            //view when big state dynamicIsland
            DynamicIsland {
                DynamicIslandExpandedRegion(.center) {
                    DynamicIslandTopSegment(countryFlag: context.state.contryFlag,
                                            countryName: context.state.countryName)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    DynamicIslandButton()
                }
                //also you can use .leading and .trailing ExpandedRegion
            } compactLeading: {
                //left small view when small state dynamicIsland
                Text(context.state.contryFlag)
                    .font(.system(size: 26))
            } compactTrailing: {
                //right small view when small state dynamic island
                VPNLogo(text: "VPN",
                        fontSize: 11,
                        cornerRadius: 4)
                .padding(.leading, 2) //In real device camera overlaps the view, need padding
            } minimal: {
                //small view when work two apps which use dynamic island
                Text(context.state.contryFlag)
                    .font(.system(size: 26))
            }
        }
    }
}
