import SwiftUI
import ARKit
import RealityKit

// This struct handles the ARView for displaying the AR content.
struct ARViewContainer: UIViewRepresentable {
    var arView: ARView

    func makeUIView(context: Context) -> ARView {
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {}
}
