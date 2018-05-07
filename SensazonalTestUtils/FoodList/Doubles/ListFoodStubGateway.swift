@testable import Sensazonal

public final class ListFoodStubGateway: ListFoodGateway {

    public init() { }

    public func filter(byMonth month: Int, onComplete: (Result<[Food]>) -> Void) {
        onComplete(.failure(SensazonalError.unknown))
    }

}
