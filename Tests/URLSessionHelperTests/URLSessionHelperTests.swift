import XCTest
@testable import URLSessionHelper

class URLSessionHelperTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(URLSessionHelper().text, "Hello, World!")
    }


    static var allTests : [(String, (URLSessionHelperTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
