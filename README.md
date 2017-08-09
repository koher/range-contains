# RangeContains

_RangeContains_ provides `isSuperset(of:)` methods for `Range`, `ClosedRange`, `CountableRange` and `CountableClosedRange`.

```swift
let a: ClosedRange<Int> = 2...7
a.isSuperset(of: 3...5) // `true`
a.isSuperset(of: 3...7) // also `true`
a.isSuperset(of: 3..<8) // still `true` because all elements contained in `3..<8` are also in `a`
a.isSuperset(of: 3..<9) // `false`
a.isSuperset(of: 11..<11) // `true` because `11..<11` has no element
a.isSuperset(of: 11...11) // `false`

let b: ClosedRange<Float> = 2...7
b.isSuperset(of: 3...5) // `true`
b.isSuperset(of: 3...7) // `true`
b.isSuperset(of: 3..<8) // `false` because { x | 7.0 < x < 8.0 } is not contained in `b`

let c: Range<Float> = 2..<7
c.isSuperset(of: 3...5) // `true`
c.isSuperset(of: 3..<7) // `true`
c.isSuperset(of: 3...7) // `false` because 7.0 is not contained in `c`

## Lisence

MIT
