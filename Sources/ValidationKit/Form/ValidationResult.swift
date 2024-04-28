public struct ValidationResult<T: Equatable>: Equatable {

    public let field: T
    public let errors: [ValidationRuleError]

    public var isValid: Bool {
        errors.isEmpty
    }

    init(field: T, errors: [ValidationRuleError]) {
        self.field = field
        self.errors = errors
    }
}
