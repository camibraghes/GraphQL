import SwiftUI

struct LaunchCard: View {
    var launch: Launches.Launch
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Launch Id: \(launch.id)")
            Text("Site: \(launch.site)")
            Text("Mission: \(launch.mission.name)")
            Text("Rocket name: \(launch.rocket.name)")
        }
        .frame(maxWidth: 300, alignment: .leading)
        .padding()
        .background(.blue)
        .cornerRadius(20)
    }
}

//struct LaunchCard_Previews: PreviewProvider {
//    static var previews: some View {
//        LaunchCard(launch: launchPreview)
//    }
//}

