import Foundation

internal struct TextIsNotEmptyRule: ValidationRule {

    func validate(_ text: String) -> ValidationRuleError? {
        text
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .isEmpty ? .textIsNotProvided : nil
    }
}
