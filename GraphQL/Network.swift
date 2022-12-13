import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    let url = "https://apollo-fullstack-tutorial.herokuapp.com/graphql"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
