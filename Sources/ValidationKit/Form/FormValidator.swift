import SwiftUI

public final class FormValidator<T: Equatable>: ObservableObject {
    
    public typealias Result = ValidationResult<T>
    
    @Published public private(set) var validationResults: [Result] = []
    
    public init() {}
    
    public func performValidation(for field: T, on text: String, ruleInputs: [ValidationRuleSet]) {
        validationResults.replace(
            by: ruleInputs.makeResult(by: text, for: field),
            where: { $0.field == field }
        )
    }
    
    public func dropValidation(for field: T) {
        validationResults.removeAll(where: { $0.field == field })
    }
}

private extension [ValidationRuleSet] {
    
    func makeResult<T>(by text: String, for field: T) -> ValidationResult<T> {
        ValidationResult(
            field: field,
            errors: compactMap { $0.validate(text) }
        )
    }
}

private extension Array {
    
    mutating func replace(
        by replacement: Self.Element,
        where predicate: (Self.Element) -> Bool
    ) {
        if let index = firstIndex(where: predicate) {
            self[index] = replacement
        } else {
            append(replacement)
        }
    }
}
