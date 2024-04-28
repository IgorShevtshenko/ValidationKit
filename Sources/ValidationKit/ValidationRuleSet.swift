public enum ValidationRuleSet: ValidationRule {

    case maxLength(Int)
    case onlyDecimals
    case textIsNotEmpty

    private var rule: ValidationRule {
        switch self {
        case .maxLength(let limit):
            MaxLengthRule(limit: limit)
        case .onlyDecimals:
            OnlyDecimalsRule()
        case .textIsNotEmpty:
            TextIsNotEmptyRule()
        }
    }

    public func validate(_ text: String) -> ValidationRuleError? {
        rule.validate(text)
    }
}
