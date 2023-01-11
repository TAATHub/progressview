//
//  GaugeProgressView.swift
//  progressview
//
//  Created by 董 亜飛 on 2023/01/11.
//

import SwiftUI

struct GaugeProgressStyle: ProgressViewStyle {
    var color: Color
    var lineWidth: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .trim(from: 0, to: fractionCompleted)
                .stroke(color, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                // trimでは右が起点なので、反時計回りに90°回転させる
                .rotationEffect(.degrees(-90))
        }
    }
}

struct GaugeProgressView: View {
    @State private var progress = 0.0
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 40) {
            ProgressView(value: progress)
                .progressViewStyle(GaugeProgressStyle(color: .blue, lineWidth: 8))
                .frame(width: 40, height: 40)
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

struct GaugeProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeProgressView()
    }
}
