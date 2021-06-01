
enum LocalRepo: String, CaseIterable {
    
    case brunch = "ro-brunch-ios"
    case tistory = "ro-tistory-ios"
    
    var name: String { self.rawValue }
    var path: String { "/Users/box-jeon/Development/projects/" + self.name }
}
