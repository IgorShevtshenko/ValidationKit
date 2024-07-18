public struct ValidationResult<T: Equatable>: Equatable {

    public let field: T
    public let errors: [DefaultValidationRuleError]

    public var isValid: Bool {
        errors.isEmpty
    }

    init(field: T, errors: [DefaultValidationRuleError]) {
        self.field = field
        self.errors = errors
    }
}
