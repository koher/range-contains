import XCTest
@testable import RangeContains

class RangeContainsTests: XCTestCase {
    func testExample() {
        let a: ClosedRange<Int> = 2...7
        _ = a.isSuperset(of: 3...5) // `true`
        _ = a.isSuperset(of: 3...7) // also `true`
        _ = a.isSuperset(of: 3..<8) // still `true` because all elements contained in `3..<8` are also in `a`
        _ = a.isSuperset(of: 3..<9) // `false`
        _ = a.isSuperset(of: 11..<11) // `true` because `11..<11` has no element
        _ = a.isSuperset(of: 11...11) // `false`

        XCTAssertTrue(a.isSuperset(of: 3...5))
        XCTAssertTrue(a.isSuperset(of: 3...7))
        XCTAssertTrue(a.isSuperset(of: 3..<8))
        XCTAssertFalse(a.isSuperset(of: 3..<9))
        XCTAssertTrue(a.isSuperset(of: 11..<11))
        XCTAssertFalse(a.isSuperset(of: 11...11))
        
        let b: ClosedRange<Float> = 2...7
        _ = b.isSuperset(of: 3...5) // `true`
        _ = b.isSuperset(of: 3...7) // `true`
        _ = b.isSuperset(of: 3..<8) // `false` because { x | 7.0 < x < 8.0 } is not contained in `b`
        
        XCTAssertTrue(b.isSuperset(of: 3...5))
        XCTAssertTrue(b.isSuperset(of: 3...7))
        XCTAssertFalse(b.isSuperset(of: 3..<8))
        
        let c: Range<Float> = 2..<7
        _ = c.isSuperset(of: 3...5) // `true`
        _ = c.isSuperset(of: 3..<7) // `true`
        _ = c.isSuperset(of: 3...7) // `false` because 7.0 is not contained in `c`
        
        XCTAssertTrue(c.isSuperset(of: 3...5))
        XCTAssertTrue(c.isSuperset(of: 3..<7))
        XCTAssertFalse(c.isSuperset(of: 3...7))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
