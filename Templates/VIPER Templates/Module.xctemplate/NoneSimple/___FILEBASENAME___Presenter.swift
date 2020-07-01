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
    private let wireframe: ___VARIABLE_moduleName___WireframeProtocol

    // MARK: - Lifecycle -

    init(view: ___VARIABLE_moduleName___ViewProtocol, wireframe: ___VARIABLE_moduleName___WireframeProtocol) {
        self.view = view
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterProtocol {
}
