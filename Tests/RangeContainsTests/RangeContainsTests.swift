import XCTest
@testable import RangeContains

class RangeContainsTests: XCTestCase {
    func testExample() {
        let a: ClosedRange<Int> = 2...7
        _ = a.contains(3...5) // true
        _ = a.contains(3...7) // true
        _ = a.contains(3..<8) // true
        _ = a.contains(3..<9) // false

        XCTAssertTrue(a.contains(3...5))
        XCTAssertTrue(a.contains(3...7))
        XCTAssertTrue(a.contains(3..<8))
        XCTAssertFalse(a.contains(3..<9))
        
        let b: ClosedRange<Float> = 2...7
        _ = b.contains(3...5) // true
        _ = b.contains(3...7) // true
        _ = b.contains(3..<8) // false
        
        XCTAssertTrue(b.contains(3...5))
        XCTAssertTrue(b.contains(3...7))
        XCTAssertFalse(b.contains(3..<8))
        
        let c: Range<Int> = 2..<7
        _ = c.contains(3...5) // true
        _ = c.contains(3..<7) // true
        _ = c.contains(3...7) // false
        
        XCTAssertTrue(c.contains(3...5))
        XCTAssertTrue(c.contains(3..<7))
        XCTAssertFalse(c.contains(3...7))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
