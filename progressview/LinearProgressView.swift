//
//  LinearProgressView.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct LinearProgressView: View {
    @State private var progress = 0.5
        
    var body: some View {
        VStack(spacing: 40) {
            // ラベル付きで進捗率を示す
            ProgressView("Downloading...", value: progress)
            
            // ラベルやアクセントカラーなどを指定してカスタマイズできる
            ProgressView("Downloading...", value: progress)
                .progressViewStyle(.linear)
                .foregroundColor(.gray)
                .tint(Color.orange)
        }
        .padding()
    }
}

struct LinearProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LinearProgressView()
    }
}
