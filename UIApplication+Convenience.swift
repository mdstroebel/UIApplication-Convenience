//
//  UIApplication+Convenience.swift
//
//  Created by Marc Stroebel on 2015/01/20.
//

extension UIApplication {
    class func udid() -> NSString {
        return UIDevice.currentDevice().identifierForVendor!.UUIDString
    }
    
    class func bundleId() -> NSString {
        return NSBundle.mainBundle().infoDictionary![kCFBundleIdentifierKey as String] as! String
    }
    
    class func bundleName() -> String {
        return NSBundle.mainBundle().infoDictionary![kCFBundleNameKey as String] as! String
    }
    
    class func appVersion() -> String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
    }
    
    class func appBuild() -> String {
        return NSBundle.mainBundle().objectForInfoDictionaryKey(kCFBundleVersionKey as String) as! String
    }
    
    class func isLandscapeOrientation() -> Bool {
        return UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication().statusBarOrientation)
    }
    
    // Returns TRUE if user is on less than iOS 8, otherwise it performs the check
    class func isUserRegisteredForRemoteNotifications() -> Bool {
        if #available(iOS 8.0, *) {
            return UIApplication.sharedApplication().isRegisteredForRemoteNotifications()
        } else {
            // Fallback on earlier versions
            return true
        }
    }
  }
