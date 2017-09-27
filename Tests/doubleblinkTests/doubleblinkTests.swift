import XCTest
@testable import doubleblink

class doubleblinkTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(doubleblink().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
