import XCTest
import FBSnapshotTestCase
@testable import Sensazonal

final class FoodListCollectionViewControllerTests: FBSnapshotTestCase {

    private var foodViewModel: FoodViewModel {
        return FoodViewModel(FoodViewModelParams("Name", .white, .red, #imageLiteral(resourceName: "content/strawberry")))
    }

    func testBindViewModelThenPopulateCollectionView() throws {
        let viewController = FoodListCollectionViewController()
        let viewModel = FoodListViewModel(foodsViewModel: [foodViewModel], month: try GregorianMonth(number: 1))

        viewController.bind(viewModel: viewModel)

        XCTAssertEqual(viewController.numberOfItemsImSection(0), 1)
    }

    func testNotCallBindViewModelThenGenerateEmptyDataSource() {
        let viewController = FoodListCollectionViewController()

        XCTAssertEqual(viewController.numberOfItemsImSection(0), 0)
    }

    // swiftlint:disable force_try
    func testBindViewModelThePresentViewControllerWithCollectionView() {
        let viewController = FoodListCollectionViewController()
        let viewModel = FoodListViewModel(foodsViewModel: [foodViewModel, foodViewModel, foodViewModel],
                                          month: try! GregorianMonth(number: 1))

        viewController.bind(viewModel: viewModel)

        FBSnapshotVerifyView(viewController.view)
        FBSnapshotVerifyLayer(viewController.view.layer)
    }

}
