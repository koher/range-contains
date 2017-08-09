# RangeContains

_RangeContains_ provides `contains` methods for `Range`, `ClosedRange`, `CountableRange` and `CountableClosedRange`.

```swift
let a: ClosedRange<Int> = 2...7
a.contains(3...5) // `true`
a.contains(3...7) // also `true`
a.contains(3..<8) // still `true` because all elements contained in `3..<8` are also in `a`
a.contains(3..<9) // `false`
a.contains(11..<11) // `true` because `11..<11` has no element
a.contains(11...11) // `false`


let b: ClosedRange<Float> = 2...7
b.contains(3...5) // `true`
b.contains(3...7) // `true`
b.contains(3..<8) // `false` because { x | 7.0 < x < 8.0 } is not contained in `b`

let c: Range<Float> = 2..<7
c.contains(3...5) // `true`
c.contains(3..<7) // `true`
c.contains(3...7) // `false` because 7.0 is not contained in `c`
```

## Lisence

MIT
