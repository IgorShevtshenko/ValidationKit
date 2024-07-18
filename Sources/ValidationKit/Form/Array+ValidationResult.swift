public extension Array {

    func isValid<T>() -> Bool where Element == ValidationResult<T> {
        allSatisfy(\.isValid)
    }

    func errors<T>(for field: T) -> [DefaultValidationRuleError] where Element == ValidationResult<T> {
        first { $0.field == field }?.errors ?? []
    }
}
