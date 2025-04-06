//
//  ContentView.swift
//  Counter
//
//  Created by 이종민 on 4/6/25.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: Store<CounterState, CounterAction>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { (viewStore: ViewStore<CounterState, CounterAction>) in
            VStack(spacing: 20) {
                Text("Counter")
                    .font(.largeTitle)
                    .bold()

                Text("\(viewStore.count)")
                    .font(.system(size: 80, weight: .bold))
                    .padding()

                HStack(spacing: 40) {
                    Button(action: { viewStore.send(.decrement) }) {
                        Text("-")
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(Color.red.opacity(0.7))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }

                    Button(action: { viewStore.send(.increment) }) {
                        Text("+")
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .background(Color.green.opacity(0.7))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }

                Button("Reset") {
                    viewStore.send(.reset)
                }
                .padding(.top, 30)
                .foregroundColor(.blue)
            }
            .padding()
        }
    }
}
