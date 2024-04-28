internal protocol ValidationRule {
    func validate(_ text: String) -> ValidationRuleError?
}
