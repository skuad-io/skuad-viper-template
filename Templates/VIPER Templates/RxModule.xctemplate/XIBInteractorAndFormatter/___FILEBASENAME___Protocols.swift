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

enum ___VARIABLE_moduleName___ {

    struct ViewOutput {
    }

    struct ViewInput {
        let models: FormatterOutput
    }

    struct FormatterInput {
    }

    struct FormatterOutput {
    }

}

protocol ___VARIABLE_moduleName___WireframeProtocol: WireframeProtocol {
}

protocol ___VARIABLE_moduleName___ViewProtocol: ViewProtocol {
}

protocol ___VARIABLE_moduleName___PresenterProtocol: PresenterProtocol {
    func configure(with output: ___VARIABLE_moduleName___.ViewOutput) -> ___VARIABLE_moduleName___.ViewInput
}

protocol ___VARIABLE_moduleName___FormatterProtocol: FormatterProtocol {
    func format(for input: ___VARIABLE_moduleName___.FormatterInput) -> ___VARIABLE_moduleName___.FormatterOutput
}

protocol ___VARIABLE_moduleName___InteractorProtocol: InteractorProtocol {
}
