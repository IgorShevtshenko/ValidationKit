import XCTest
@testable import ValidationKit

private enum Field {
    case first
    case second
}


final class FormValidatorTests: XCTestCase {

    
    func testValidator() {
        let validator = FormValidator<Field>()
        validator.performValidation(
            for: Field.first,
            on: "",
            ruleInputs: [DefaultValidationRuleSet.textIsNotEmpty]
        )
        
        XCTAssertTrue(validator.validationResults.contains { $0.field == .first } )
        XCTAssertTrue(
            validator.validationResults
                .contains { $0.errors.contains(.textIsNotProvided) }
        )
    }
}
