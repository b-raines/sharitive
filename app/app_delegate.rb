class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    @nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    settings_controller = SettingsController.alloc.initWithNibName(nil, bundle: nil)
    settings_controller.title = "Settings"

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [@nav_controller, settings_controller]
    @window.rootViewController = tab_controller
    true
  end
end