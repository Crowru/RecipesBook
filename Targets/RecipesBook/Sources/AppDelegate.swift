import UIKit
import RecipesBookKit
import RecipesBookUI
import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
        
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        RecipesBookKit.hello()
        RecipesBookUI.hello()
        
        CustomFontManager.registerCustomFonts()
        
        ThemeManager.shared.themes = [
            .light: ThemeStorage.light,
            .dark: ThemeStorage.dark
        ]
        
        return true
    }
}
