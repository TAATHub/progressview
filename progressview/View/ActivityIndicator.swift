//
//  ActivityIndicator.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var style: UIActivityIndicatorView.Style = .medium
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator()
    }
}
