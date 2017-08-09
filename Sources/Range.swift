extension CountableRange {
    public func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    public func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }

    public func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    public func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension CountableClosedRange {
    public func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    public func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }

    public func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    public func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }
}

extension Range where Bound: Strideable, Bound.Stride: SignedInteger {
    public func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    public func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension Range {
    public func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    public func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension ClosedRange where Bound: Strideable, Bound.Stride: SignedInteger {
    public func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    public func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }

    public func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }
}

extension ClosedRange {
    public func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    public func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }
}

