//
//  mocker.swift
//  AutoMockable
//
//  Created by Vincent on 16/07/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public func mocker<A: AutoMockable, B>(_ factory: @escaping (A) -> B) -> () -> B {
    return {
        return factory(A.mocked())
    }
}

public func mocker<A: AutoMockable, B: AutoMockable, C>(_ factory: @escaping (A, B) -> C) -> () -> C {
    return {
        return factory(A.mocked(), B.mocked())
    }
}


public func mocker<A: AutoMockable, B: AutoMockable, C: AutoMockable, D>(_ factory: @escaping (A, B, C) -> D) -> () -> D {
    return {
        return factory(A.mocked(), B.mocked(), C.mocked())
    }
}

public func mocker<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E>(_ factory: @escaping (A, B, C, D) -> E) -> () -> E {
    return {
        return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked())
    }
}

public func mocker<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E: AutoMockable, F>(_ factory: @escaping (A, B, C, D, E) -> F) -> () -> F {
    return {
        return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked(), E.mocked())
    }
}

public func mocker<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E: AutoMockable, F: AutoMockable, G>(_ factory: @escaping (A, B, C, D, E, F) -> G) -> () -> G {
    return {
        return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked(), E.mocked(), F.mocked())
    }
}
