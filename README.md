# RangeContains

_RangeContains_ provides `contains` methods for `Range`, `ClosedRange`, `CountableRange` and `CountableClosedRange`.

```swift
let a: ClosedRange<Int> = 2...7
a.contains(3...5) // true
a.contains(3...7) // true
a.contains(3..<8) // true
a.contains(3..<9) // false

let b: ClosedRange<Float> = 2...7
b.contains(3...5) // true
b.contains(3...7) // true
b.contains(3..<8) // false

let c: Range<Int> = 2..<7
c.contains(3...5) // true
c.contains(3..<7) // true
c.contains(3...7) // false
```

## Lisence

MIT
