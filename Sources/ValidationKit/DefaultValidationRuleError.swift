public enum DefaultValidationRuleError: Error, Equatable {
    case exceededCharactersLimit(Int)
    case onlyDecimals
    case textIsNotProvided
}

public extension DefaultValidationRuleError? {

    var isInputInvalid: Bool {
        switch self {
        case .exceededCharactersLimit, .onlyDecimals, .textIsNotProvided:
            true
        case .none:
            false
        }
    }
}
