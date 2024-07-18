import Foundation

internal struct OnlyDecimalsRule: ValidationRule {

    init() {}

    func validate(_ text: String) -> DefaultValidationRuleError? {
        Double(text) != nil ? nil : .onlyDecimals
    }
}
