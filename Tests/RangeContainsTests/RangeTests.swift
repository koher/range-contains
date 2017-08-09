import XCTest
@testable import RangeContains

class RangeTests: XCTestCase {
    func testCountableRangeContains() {
        do {
            let a: CountableRange<Int> = 2..<7

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }
        }
    }

    func testCountableClosedRangeContains() {
        do {
            let a: CountableClosedRange<Int> = 2...7

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }
        }
    }

    func testRangeContains() {
        do {
            let a: Range<Int> = 2..<7

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }
        }

        do {
            let a: Range<Float> = 2..<7

            do {
                let b: Range<Float> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...7
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...7
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }

    func testClosedRangeContains() {
        do {
            let a: ClosedRange<Int> = 2...7

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
                XCTAssertTrue(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(b.reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableRange(b).reduce(true) { $0 && a.contains($1) })
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
                XCTAssertFalse(CountableClosedRange(b).reduce(true) { $0 && a.contains($1) })
            }
        }

        do {
            let a: ClosedRange<Float> = 2...7

            do {
                let b: Range<Float> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...7
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...7
                XCTAssertTrue(a.contains(b))
            }

            do {
                let b: Range<Float> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            do {
                let b: Range<Float> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }

    static var allTests = [
        ("testCountableRangeContains", testCountableRangeContains),
        ("testCountableClosedRangeContains", testCountableClosedRangeContains),
        ("testRangeContains", testRangeContains),
        ("testClosedRangeContains", testClosedRangeContains),
    ]
}
