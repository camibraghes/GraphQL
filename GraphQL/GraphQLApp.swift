import SwiftUI

@main
struct GraphQLApp: App {
    @State var launchViewModel = LaunchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(launchViewModel)
        }
    }
}
