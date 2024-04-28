public enum ValidationRuleError: Error, Equatable {
    case exceededCharactersLimit(Int)
    case onlyDecimals
    case textIsNotProvided
}

public extension ValidationRuleError? {

    var isInputInvalid: Bool {
        switch self {
        case .exceededCharactersLimit, .onlyDecimals, .textIsNotProvided:
            true
        case .none:
            false
        }
    }
}
