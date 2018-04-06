import UIKit

final class ListFoodViewPresenter: ListFoodPresenter {

    private weak var binder: FoodListBinder?

    init(binder: FoodListBinder) {
        self.binder = binder
    }

    func presentError(_ error: SensazonalError) { }

    func presentFoods(_ foods: [Food], monthNumber: Int) {
        let foodViewModels = foods.map { food -> FoodViewModel in
            let name = Locale.localize(food.keyName)
            return FoodViewModel(name: name, nameColor: .white, nameBackgroundColor: .red, photo: #imageLiteral(resourceName: "content/strawberry"))
        }

        let foodListViewModel = FoodListViewModel(foodsViewModel: foodViewModels, month: Month(number: monthNumber))
        binder?.bind(viewModel: foodListViewModel)
    }

}
