import SwiftUI
import ARKit
import RealityKit

struct ContentView: View {
    var arView = ARView(frame: .zero)

    var body: some View {
        ARViewContainer(arView: arView)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                ARSessionManager.setupARSession(arView: arView)
            }
    }
}


