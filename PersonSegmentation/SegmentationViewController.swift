//
//  ViewController.swift
//  PersonSegmentation
//
//  Created by Fabio Dela Antonio on 06/11/2021.
//

import Cocoa

final class SegmentationViewController: NSViewController {

    @IBOutlet private weak var progresssIndicator: NSProgressIndicator!
    var segmentationWorker: SegmentationWorker?

    override func viewDidLoad() {
        super.viewDidLoad()
        progresssIndicator.startAnimation(self)
        segmentationWorker?.delegate = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension SegmentationViewController: SegmentationWorkerDelegate {

}
