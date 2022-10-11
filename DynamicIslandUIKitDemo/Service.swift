//
//  Service.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import Foundation

protocol ServiceDelegate: AnyObject {
    func updateChoosedServer(_ indexPath: IndexPath)
}

struct Service {
    public let data = [
        "🇦🇱 Albania", "🇦🇺 Australia", "🇦🇹 Austria", "🇧🇷 Brazil", "🇧🇪 Belgium", "🇧🇬 Bulgaria", "🇨🇦 Canada", "🇨🇳 China", "🇨🇷 Costa Rica", "🇨🇾 Cyprus", "🇨🇿 Czech Republic", "🇩🇰 Denmark", "🇪🇪 Estonia", "🇫🇮 Finland", "🇫🇷 France", "🇬🇪 Georgia", "🇩🇪 Germany", "🇬🇭 Ghana", "🇬🇷 Greece", "🇭🇰 Hong Kong", "🇭🇺 Hungary", "🇮🇸 Iceland", "🇮🇳 India", "🇮🇩 Indonesia", "🇮🇪 Ireland", "🇮🇹 Italy", "🇯🇵 Japan", "🇰🇪 Kenya", "🇱🇻 Latvia", "🇱🇹 Lithuania", "🇱🇺 Luxembourg", "🇲🇾 Malaysia", "🇲🇽 Mexico", "🇲🇩 Moldova", "🇳🇱 Netherlands", "🇳🇿 New Zealand", "🇳🇬 Nigeria", "🇳🇴 Norway", "🇵🇭 Philippines", "🇵🇱 Poland", "🇵🇹 Portugal", "🇷🇴 Romania", "🇷🇺 Russia", "🇷🇸 Serbia", "🇸🇬 Singapore", "🇸🇰 Slovakia", "🇿🇦 South Africa", "🇰🇷 South Korea", "🇪🇸 Spain", "🇸🇪 Sweden", "🇨🇭 Switzerland", "🇹🇼 Taiwan", "🇹🇿 Tanzania", "🇹🇭 Thailand", "🇹🇷 Turkey", "🇺🇦 Ukraine", "🇬🇧 United Kingdom", "🇺🇸 United States", "🇻🇳 Vietnam"
    ]
    
    public var choosedServer: String
    
    public var dynamicIslandState = false
    
    init() {
        choosedServer = self.data[9]
    }
    
    public mutating func setChoosedServer(_ indexPath: IndexPath) {
        self.choosedServer = data[indexPath.row]
    }

    public var splitFlagAndName: (String, String) {
        let flag = String(choosedServer.prefix(1))
        let name = String(choosedServer.dropFirst(2))
        return (flag, name)
    }
}
