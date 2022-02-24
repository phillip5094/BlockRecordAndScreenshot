//
//  RecordBlockView.swift
//  BlockRecordAndScreenshot
//
//

import SwiftUI

struct RecordBlockView: View {
    var body: some View {
        Text("보안문서 녹화하면 안돼....")
            .font(.title)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black, ignoresSafeAreaEdges: .all)
    }
}

struct RecordBlockView_Previews: PreviewProvider {
    static var previews: some View {
        RecordBlockView()
    }
}
