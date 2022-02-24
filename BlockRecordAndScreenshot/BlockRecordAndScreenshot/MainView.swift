//
//  MainView.swift
//  BlockRecordAndScreenshot
//
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("이것은 보안문서")
            .font(.title)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red, ignoresSafeAreaEdges: .all)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
