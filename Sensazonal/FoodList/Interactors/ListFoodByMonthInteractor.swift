class ListFoodByMonthInteractor {

    private let gateway: ListFoodGateway
    private let presenter: ListFoodPresenter

    init(gateway: ListFoodGateway, presenter: ListFoodPresenter) {
        self.gateway = gateway
        self.presenter = presenter
    }

    func list(byMonth month: Int) {
        let isValidMonth = (1...12) ~= month
        guard isValidMonth else {
            return presenter.presentError(.invalidMonth)
        }

        gateway.filter(byMonth: month, onComplete: { result in
            switch result {
            case let .success(foods): presenter.presentFoods(foods, monthNumber: month)
            case let .failure(error): presenter.presentError(error)
            }
        })
    }

}
