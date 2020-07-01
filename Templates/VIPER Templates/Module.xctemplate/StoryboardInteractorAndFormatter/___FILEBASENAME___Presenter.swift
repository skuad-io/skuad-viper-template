//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

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
}
