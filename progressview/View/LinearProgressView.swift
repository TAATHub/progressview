//
//  LinearProgressView.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct LinearProgressView: View {
    @State private var progress = 0.0
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
        
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
        .onReceive(timer) { _ in
            progress += 0.05
            // 計算誤差をなくすために有効桁数を小数点以下第2位までとする
            progress = floor(progress*100)/100
            // 1.0を超える場合は0に戻す
            progress = progress > 1.0 ? 0 : progress
        }
    }
}

struct LinearProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LinearProgressView()
    }
}
