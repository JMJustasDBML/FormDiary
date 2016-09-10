//
//  DispatcherController.swift
//  Forms
//
//  Created by Justinas Marcinka on 11/02/16.
//  Copyright © 2016 jm. All rights reserved.
//

import Foundation
import UIKit

class DispatcherController: UIViewController {
    let formService = FormService.instance
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let storyboardName = formService.getActiveSurveyId() == nil ?
        "JoinSurvey" :
        "ActiveSurvey"
        print(storyboardName)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let ctrl = storyboard.instantiateInitialViewController()
        self.presentViewController(ctrl!, animated: false, completion: nil)
    }
    
}