import Foundation

internal struct MaxLengthRule: ValidationRule {

    private let limit: Int

    init(limit: Int) {
        self.limit = limit
    }

    func validate(_ text: String) -> DefaultValidationRuleError? {
        text.count > limit ? .exceededCharactersLimit(limit) : nil
    }
}
