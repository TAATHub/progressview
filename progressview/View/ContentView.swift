//
//  ContentView.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("CircularProgressView", destination: { CircularProgressView() })
                NavigationLink("LinearProgressView", destination: { LinearProgressView() })
                NavigationLink("GaugeProgressView", destination: { GaugeProgressView() })
                NavigationLink("ActivityIndicatorView", destination: { ActivityIndicatorView() })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
