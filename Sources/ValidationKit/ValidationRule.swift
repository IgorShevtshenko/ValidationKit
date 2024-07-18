public protocol ValidationRule {
    func validate(_ text: String) -> DefaultValidationRuleError?
}
