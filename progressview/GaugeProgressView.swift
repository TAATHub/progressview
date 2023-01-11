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
    @State private var progress = 0.6
    
    var body: some View {
        VStack(spacing: 40) {
            ProgressView(value: progress)
                .progressViewStyle(GaugeProgressStyle(color: .blue, lineWidth: 8))
                .frame(width: 40, height: 40)
        }
        .padding()
    }
}

struct GaugeProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeProgressView()
    }
}
