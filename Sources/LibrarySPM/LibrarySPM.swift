// The Swift Programming Language
// https://docs.swift.org/swift-book

import Alamofire

public class LibrarySPM {
    
    public init() {}
    
    public func isConnected() -> String {
        return "Yes!"
    }
    
    public func alamoFire() -> String {
        return Alamofire.AFInfo.version
    }
}
