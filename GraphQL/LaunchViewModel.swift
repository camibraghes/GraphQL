import Foundation

class LaunchViewModel: ObservableObject {
    @Published var launches: [Launches.Launch] = []
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: LaunchListQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let launches = graphQLResult.data?.launches {
                    print("Success! Result \(graphQLResult)")
                    self.launches = self.process(data: launches)
                } else if let errors = graphQLResult.errors {
                    print("GraphQL errors \(errors)")
                }
            case .failure(let error):
                print("Failure! Error:\(error)")
            }
        }
    }
    
    func process(data: LaunchData) -> [Launches.Launch] {
        return Launches(data).launches
    }
}
