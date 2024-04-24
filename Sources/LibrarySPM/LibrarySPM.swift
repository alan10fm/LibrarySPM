// The Swift Programming Language
// https://docs.swift.org/swift-book

import Alamofire
import Sentry
import DeviceKit

public class LibrarySPM {
    
    public init() {}
    
    public func isConnected() -> String {
        return "Yes!"
    }
    
    public func versions() -> String {
        return "Alamo: \(Alamofire.AFInfo.version), Sentry: \(SentrySDK.version()), DeviceKit: \(Device.current)"
    }
}
