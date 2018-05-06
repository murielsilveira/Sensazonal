import UIKit

struct FoodListViewFacotry {

    private init() { }

    static func make(dataProvider: FoodListDataProvider) -> UIView & Reloadable {
        let view = FoodListCollectionView()
        view.setupDataSource(dataProvider)
        return view
    }

}
