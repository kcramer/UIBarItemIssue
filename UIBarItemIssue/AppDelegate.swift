//
//  AppDelegate.swift
//  UIBarItemIssue
//
//  Created by Kevin on 5/25/18.
//  Copyright © 2018 Kevin. All rights reserved.
//

import UIKit
import SwiftTheme

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let barItem = UIBarButtonItem.appearance()
        let monoFontDict = [
            NSAttributedStringKey.font:
                UIFont.monospacedDigitSystemFont(
                    ofSize: 12.0, weight: .heavy)
        ]
        let lightFontDict = [
            NSAttributedStringKey.font:
                UIFont.systemFont(ofSize: 12.0, weight: .light)
        ]
        let picker = ThemeDictionaryPicker.pickerWithAttributes(
            [monoFontDict, lightFontDict])
        // The line below will cause an NSInternalInconsistencyException
        // as the app displays a UIView with a UIBarButtonItem.
        // Comment out the line to let the application load if you
        // wish to test the theme normally and not via UIAppearance.
        barItem.theme_setTitleTextAttributes(picker, forState: .normal)

        return true
    }
}

