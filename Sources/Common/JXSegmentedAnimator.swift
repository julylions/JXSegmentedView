//
//  JXSegmentedAnimator.swift
//  JXSegmentedView
//
//  Created by jiaxin on 2019/1/21.
//  Copyright © 2019 jiaxin. All rights reserved.
//

import Foundation
import UIKit

open class JXSegmentedAnimator {
    open var duration: CGFloat = 0.25
    open var progressClosure: ((CGFloat)->())?
    open var completedClosure: (()->())?
    private var displayLink: CADisplayLink!
    private var firstTimestamp: CFTimeInterval?

    deinit {
        progressClosure = nil
        completedClosure = nil
    }

    init() {
        displayLink = CADisplayLink(target: self, selector: #selector(processDisplayLink(sender:)))
    }

    open func start() {
        displayLink.add(to: RunLoop.main, forMode: RunLoop.Mode.common)
    }

    open func stop() {
        displayLink.invalidate()
        completedClosure?()
    }

    @objc private func processDisplayLink(sender: CADisplayLink) {
        if firstTimestamp == nil {
            firstTimestamp = sender.timestamp
        }
        let percent = CGFloat((sender.timestamp - firstTimestamp!))/duration
        if percent >= 1 {
            progressClosure?(1)
            displayLink.invalidate()
            completedClosure?()
            return
        }
        progressClosure?(percent)
    }

}
