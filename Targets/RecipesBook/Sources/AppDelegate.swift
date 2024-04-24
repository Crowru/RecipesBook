import UIKit
import RecipesBookKit
import RecipesBookUI

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        RecipesBookKit.hello()
        RecipesBookUI.hello()

        return true
    }
}
