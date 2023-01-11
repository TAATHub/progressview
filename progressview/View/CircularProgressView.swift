//
//  CircularProgressView.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct CircularProgressView: View {
    var body: some View {
        VStack(spacing: 40) {
            // initだけの場合は、自動的に円形スタイルになる
            ProgressView()

            // アクセントカラーなどを指定してカスタマイズできる
            ProgressView()
                .progressViewStyle(.circular)
                .padding()
                .tint(Color.white)
                .background(Color.gray)
                .cornerRadius(8)
                .scaleEffect(1.2)
        }
        .padding()
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
