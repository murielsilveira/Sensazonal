import XCTest
@testable import Sensazonal

final class FoodViewModelTests: XCTestCase {

    func testInit() {
        let photo = UIImage()

        let viewModel = FoodViewModel.sample

        XCTAssertEqual(viewModel.name, "Name")
        XCTAssertEqual(viewModel.nameBackgroundGradient.colors?.count, 2)
        XCTAssertEqual(viewModel.nameColor, .black)
        XCTAssertEqual(viewModel.photo, photo)
    }

}
