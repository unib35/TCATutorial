//
//  CounterApp.swift
//  Counter
//
//  Created by 이종민 on 4/6/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct CounterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(
                    initialState: CounterState(),
                    reducer: {
                        CounterReducer()
                    }
                )
            )
        }
    }
}
