import SwiftUI
import ARKit
import RealityKit

struct ContentView: View {
    @State private var lidarWorks = false
    @State private var isChecked = false
    
    var body: some View {
        VStack {
            Text(isChecked ? (lidarWorks ? "yahooo!" : "LiDAR sensor does not work.") : "Checking LiDAR sensor...")
                .padding()
            
            Button(action: {
                checkLiDAR()
            }) {
                Text("Check LiDAR")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .onAppear {
            checkLiDAR()
        }
    }
    
    func checkLiDAR() {
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            lidarWorks = true
        } else {
            lidarWorks = false
        }
        isChecked = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
