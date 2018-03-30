@testable import Sensazonal

class StubBinder: FoodListBinder {

    var didCallBinder = false
    var viewModel: FoodListViewModel?

    func bind(viewModel: FoodListViewModel) {
        didCallBinder = true
        self.viewModel = viewModel
    }

}
