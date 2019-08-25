public class Collective<Element> {

    public let base: Array<Element>

    public init(base: Array<Element>) {
        self.base = base
    }

    public static func gettersAreNotSupportedFailure() -> Never {
        preconditionFailure("collective getters are not supported")
    }

}

public protocol CollectiveCompatible {

    associatedtype CollectiveBase

    var all: Collective<CollectiveBase> { get set }

}

extension Array: CollectiveCompatible {

    public var all: Collective<Element> {
        get {
            return Collective(base: self)
        }
        set {
            // noop
        }
    }

}

extension Set: CollectiveCompatible {

    public var all: Collective<Element> {
        get {
            return Collective(base: Array(self))
        }
        set {
            // noop
        }
    }

}
