//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class ___VARIABLE_moduleName___Presenter {

    // MARK: - Private properties -

    private unowned let view: ___VARIABLE_moduleName___ViewProtocol
    private let formatter: ___VARIABLE_moduleName___FormatterProtocol
    private let interactor: ___VARIABLE_moduleName___InteractorProtocol
    private let wireframe: ___VARIABLE_moduleName___WireframeProtocol

    // MARK: - Lifecycle -

    init(view: ___VARIABLE_moduleName___ViewProtocol, formatter: ___VARIABLE_moduleName___FormatterProtocol, interactor: ___VARIABLE_moduleName___InteractorProtocol, wireframe: ___VARIABLE_moduleName___WireframeProtocol) {
        self.view = view
        self.formatter = formatter
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterProtocol {

    func configure(with output: ___VARIABLE_moduleName___.ViewOutput) -> ___VARIABLE_moduleName___.ViewInput {

        let formatterInput = ___VARIABLE_moduleName___.FormatterInput()

        let formatterOutput = formatter.format(for: formatterInput)

        return ___VARIABLE_moduleName___.ViewInput(models: formatterOutput)
    }

}
