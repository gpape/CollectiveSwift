import XCTest
@testable import CollectiveSwift

final class CollectiveSwiftTests: XCTestCase {

    static var allTests = [
        ("testCollectiveSetter", testCollectiveSetter),
    ]

    func testCollectiveSetter() {
        let wrappers: [Wrapper<Int>] = [Wrapper(0), Wrapper(0), Wrapper(0)]
        wrappers.all.value = 42
        for wrapper in wrappers {
            XCTAssertEqual(wrapper.value, 42)
        }
    }

}
