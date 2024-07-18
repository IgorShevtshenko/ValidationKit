import Foundation

internal struct TextIsNotEmptyRule: ValidationRule {

    func validate(_ text: String) -> DefaultValidationRuleError? {
        text
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty ? .textIsNotProvided : nil
    }
}
