//
//  mock.swift
//  AutoMockable
//
//  Created by Vincent on 16/07/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

func mock<A: AutoMockable, B>(_ factory: (A) -> B) -> B {
    return factory(A.mocked())
}

func mock<A: AutoMockable, B: AutoMockable, C>(_ factory: (A, B) -> C) -> C {
    return factory(A.mocked(), B.mocked())
}

func mock<A: AutoMockable, B: AutoMockable, C: AutoMockable, D>(_ factory: @escaping (A, B, C) -> D) -> D {
    return factory(A.mocked(), B.mocked(), C.mocked())
}

func mock<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E>(_ factory: @escaping (A, B, C, D) -> E) -> E {
    return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked())
}

func mock<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E: AutoMockable, F>(_ factory: @escaping (A, B, C, D, E) -> F) -> F {
    return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked(), E.mocked())
}

func mock<A: AutoMockable, B: AutoMockable, C: AutoMockable, D: AutoMockable, E: AutoMockable, F: AutoMockable, G>(_ factory: @escaping (A, B, C, D, E, F) -> G) -> G {
    return factory(A.mocked(), B.mocked(), C.mocked(), D.mocked(), E.mocked(), F.mocked())
}
