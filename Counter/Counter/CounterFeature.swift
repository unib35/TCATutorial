//
//  CounterFeature.swift
//  Counter
//
//  Created by 이종민 on 4/6/25.
//

import ComposableArchitecture

// MARK: - State
struct CounterState: Equatable {
    var count = 0
}

// MARK: - Action
enum CounterAction: Equatable {
    case increment
    case decrement
    case reset
}

// MARK: - Reducer
struct CounterReducer: Reducer {
    func reduce(into state: inout CounterState, action: CounterAction) -> Effect<CounterAction> {
        switch action {
        case .increment:
            state.count += 1
            return .none
        case .decrement:
            state.count -= 1
            return .none
        case .reset:
            state.count = 0
            return .none
        }
    }
}
