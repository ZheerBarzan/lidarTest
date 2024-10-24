import ARKit
import RealityKit

class ARSessionManager {
    
    static func setupARSession(arView: ARView) {
        let configuration = ARWorldTrackingConfiguration()
        
        // Enable LiDAR's scene depth feature if available.
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            configuration.sceneReconstruction = .mesh
        }

        // Enable environment texturing for better depth perception.
        configuration.environmentTexturing = .automatic

        // Start the AR session.
        arView.session.run(configuration)
    }
}
