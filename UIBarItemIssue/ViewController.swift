//
//  ViewController.swift
//  UIBarItemIssue
//
//  Created by Kevin on 5/25/18.
//  Copyright © 2018 Kevin. All rights reserved.
//

import UIKit
import SwiftTheme

class ViewController: UIViewController {
    @IBOutlet weak var testButton: UIBarButtonItem!
    @IBOutlet weak var test2Button: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        let monoFontDict = [
            NSAttributedStringKey.font:
                UIFont.monospacedDigitSystemFont(ofSize: 12.0, weight: .heavy)
        ]
        let lightFontDict = [
            NSAttributedStringKey.font:
                UIFont.systemFont(ofSize: 12.0, weight: .light)
        ]
        let picker = ThemeDictionaryPicker.pickerWithAttributes(
            [monoFontDict, lightFontDict])
        testButton.theme_setTitleTextAttributes(picker, forState: .normal)
        test2Button.theme_setTitleTextAttributes(picker, forState: .normal)
    }

    @IBAction func changeTheme(_ sender: Any) {
        let current = ThemeManager.currentThemeIndex
        ThemeManager.setTheme(index: current == 0 ? 1 : 0)
    }
}

