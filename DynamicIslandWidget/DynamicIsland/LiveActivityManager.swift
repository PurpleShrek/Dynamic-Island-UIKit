//
//  LiveActivityManager.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 05.10.2022.
//

import Foundation
import ActivityKit

//Target Membership for this file: UIKit App + Widget Exension

class LiveActivityManager: ObservableObject {
    @Published var activity: Activity<Attributes>?
    
    // MARK: - STARTING
    func startActivity(_ country: (String, String)) {
        Task {
            let attributes = Attributes()
            let state = Attributes.ContentState(contryFlag: country.0,
                                                countryName: country.1)
            do {
                let activity = try Activity<Attributes>.request(
                    attributes: attributes,
                    contentState: state,
                    pushType: nil
                )
                self.activity = activity
            } catch let error {
                print("Error starting activity \(error) \(error.localizedDescription)")
            }
        }
    }
    
    // MARK: - UPDATING
    func updateActivity(_ country: (String, String)) {
        Task {
            let updatedStatus = Attributes.ContentState(contryFlag: country.0, countryName: country.1)
            for activtiy in Activity<Attributes>.activities {
                await activtiy.update(using: updatedStatus)
            }
        }
    }

    // MARK: - STOPPING
    func stopActivity() { //If you terminate app, and reopen, you need delete previous activities. Loop is used for this
        Task {
            for activity in Activity<Attributes>.activities {
                await activity.end(dismissalPolicy: .immediate)
            }
        }
    }
}

