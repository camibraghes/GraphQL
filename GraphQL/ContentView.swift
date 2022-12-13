import SwiftUI

struct ContentView: View {
    @EnvironmentObject var launchViewModel: LaunchViewModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(launchViewModel.launches) { launch in
                LaunchCard(launch: launch)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchViewModel())
    }
}
