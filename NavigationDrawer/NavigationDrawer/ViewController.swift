//
//  ViewController.swift
//  NavigationDrawer
//
//  Created by David Kopala on 2/13/15.
//  Copyright (c) 2015 David Kopala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var transitionOperator = TransitionOperator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var activate: UIButton!
    @IBAction func activateAction(sender: AnyObject) {
        performSegueWithIdentifier("presentNav", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let toViewController = segue.destinationViewController as UIViewController
        self.modalPresentationStyle = UIModalPresentationStyle.Custom
        toViewController.transitioningDelegate = self.transitionOperator
    }

}

