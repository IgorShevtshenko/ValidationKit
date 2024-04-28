import Foundation

internal struct OnlyDecimalsRule: ValidationRule {

    init() {}

    func validate(_ text: String) -> ValidationRuleError? {
        Double(text) != nil ? nil : .onlyDecimals
    }
}
