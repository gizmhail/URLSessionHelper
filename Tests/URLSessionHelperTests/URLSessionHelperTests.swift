import XCTest
@testable import URLSessionHelper

class URLSessionHelperTests: XCTestCase {
    func testCreation() {
        let session = URLSession.cliShared
        XCTAssertNotNil(session)
    }

    static var allTests : [(String, (URLSessionHelperTests) -> () throws -> Void)] {
        return [
            ("testCreation", testCreation),
        ]
    }
}
