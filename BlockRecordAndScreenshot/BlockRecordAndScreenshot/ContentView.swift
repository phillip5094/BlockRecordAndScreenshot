//
//  ContentView.swift
//  BlockRecordAndScreenshot
//
//

import SwiftUI

struct ContentView: View {
    @State private var screenshotAlert = false
    @State private var isRecording = false
    
    var body: some View {
        ZStack {
            if isRecording == false {
                MainView()
            } else {
                RecordBlockView()
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIScreen.capturedDidChangeNotification), perform: { _ in
            isRecording = UIScreen.main.isCaptured
        })
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in
            screenshotAlert = true
        }
        .alert(isPresented: $screenshotAlert) {
            Alert(title: Text("스크린샷 감지"), message: Text("나중에 처벌받을 수 있음."), dismissButton: .cancel(Text("확인")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
