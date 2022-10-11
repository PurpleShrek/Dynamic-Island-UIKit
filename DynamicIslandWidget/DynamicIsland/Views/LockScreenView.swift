//
//  LockScreenView.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 05.10.2022.
//

import SwiftUI
import WidgetKit

//Target Membership for this file: Widget Exension

//MARK: - Full View
struct LockScreenView: View {
    let countryFlag: String
    let countryName: String
    
    init(countryFlag: String, countryName: String) {
        self.countryFlag = countryFlag
        self.countryName = countryName
    }
    
    var body: some View {
        HStack {
            LeftHeader(countryFlag: countryFlag,
                       countryName: countryName)
                .frame(maxWidth: .infinity, alignment: .leading)
            RightHeader()
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

struct LockScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LockScreenView(countryFlag: "🇦🇺",
                       countryName: "Australia")
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

//MARK: - Left View
struct LeftHeader: View {
    let countryFlag: String
    let countryName: String
    
    init(countryFlag: String, countryName: String) {
        self.countryFlag = countryFlag
        self.countryName = countryName
    }

    var body: some View {
        HStack {
            Spacer()
                .frame(width: 24)
            Text(countryFlag)
                .font(.system(size: 30))
            Spacer()
                .frame(width: 10)
            Text(countryName)
                .font(.system(size: 20,
                              weight: .medium))
        }
    }
}

struct LeftHeader_Previews: PreviewProvider {
    static var previews: some View {
        LeftHeader(countryFlag: "🇦🇺",
                   countryName: "Australia")
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

//MARK: - Left View
struct RightHeader: View {
    var body: some View {
        HStack {
            VPNLogo(text: "VPN is active",
                    fontSize: 15,
                    cornerRadius: 6)
            Spacer()
                .frame(width: 24)
        }
    }
}

struct RightHeader_Previews: PreviewProvider {
    static var previews: some View {
        RightHeader()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
