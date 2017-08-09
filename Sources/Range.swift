extension CountableRange {
    public func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound || range.lowerBound == range.upperBound
    }

    public func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }

    public func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound || range.lowerBound == range.upperBound
    }

    public func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension CountableClosedRange {
    public func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1) || range.lowerBound == range.upperBound
    }

    public func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    public func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1) || range.lowerBound == range.upperBound
    }

    public func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

extension Range where Bound: Strideable, Bound.Stride: SignedInteger {
    public func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound || range.lowerBound == range.upperBound
    }

    public func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension Range {
    public func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound || range.lowerBound == range.upperBound
    }

    public func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension ClosedRange where Bound: Strideable, Bound.Stride: SignedInteger {
    public func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1) || range.lowerBound == range.upperBound
    }

    public func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    public func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1) || range.lowerBound == range.upperBound
    }
}

extension ClosedRange {
    public func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound || range.lowerBound == range.upperBound
    }

    public func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

