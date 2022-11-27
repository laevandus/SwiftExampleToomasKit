import Foundation

public struct ToomasKit {
    public private(set) var text = "Hello, World!"

    public init() {
        // ToomasKitPlugin and CodeGenerator generates a file which contains MyGeneratedEnum
        print(MyGeneratedEnum.allCases)
    }
}
