//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class ___VARIABLE_moduleName___Wireframe: BaseWireframe {

    // MARK: - Module setup -

    init() {
        let moduleViewController = ___VARIABLE_moduleName___ViewController()
        super.init(viewController: moduleViewController)

        let presenter = ___VARIABLE_moduleName___Presenter(view: moduleViewController, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___WireframeProtocol {
}
