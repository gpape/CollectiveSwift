//
//  Wrapper.swift
//  
//
//  Created by Greg Pape on 8/25/19.
//

import CollectiveSwift

final class Wrapper<Value> {

    var value: Value

    init(_ value: Value) {
        self.value = value
    }

}

extension Collective where Element: Wrapper<Int> {

    var value: Int {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.value = newValue } }
    }

}
