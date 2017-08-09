import XCTest
@testable import RangeContains

class RangeContainsTests: XCTestCase {
    func testExample() {
        let a: ClosedRange<Int> = 2...7
        _ = a.contains(3...5) // `true`
        _ = a.contains(3...7) // also `true`
        _ = a.contains(3..<8) // still `true` because all elements contained in `3..<8` are also in `a`
        _ = a.contains(3..<9) // `false`
        _ = a.contains(11..<11) // `true` because `11..<11` has no element
        _ = a.contains(11...11) // `false`

        XCTAssertTrue(a.contains(3...5))
        XCTAssertTrue(a.contains(3...7))
        XCTAssertTrue(a.contains(3..<8))
        XCTAssertFalse(a.contains(3..<9))
        XCTAssertTrue(a.contains(11..<11))
        XCTAssertFalse(a.contains(11...11))
        
        let b: ClosedRange<Float> = 2...7
        _ = b.contains(3...5) // `true`
        _ = b.contains(3...7) // `true`
        _ = b.contains(3..<8) // `false` because { x | 7.0 < x < 8.0 } is not contained in `b`
        
        XCTAssertTrue(b.contains(3...5))
        XCTAssertTrue(b.contains(3...7))
        XCTAssertFalse(b.contains(3..<8))
        
        let c: Range<Float> = 2..<7
        _ = c.contains(3...5) // `true`
        _ = c.contains(3..<7) // `true`
        _ = c.contains(3...7) // `false` because 7.0 is not contained in `c`
        
        XCTAssertTrue(c.contains(3...5))
        XCTAssertTrue(c.contains(3..<7))
        XCTAssertFalse(c.contains(3...7))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
