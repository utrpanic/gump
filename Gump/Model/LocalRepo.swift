
enum LocalRepo: String, CaseIterable {
    
    case brunch = "ro-brunc-ios"
    case tistory = "ro-tistory-ios"
    
    var name: String { self.rawValue }
    var path: String { "~/Development/projects/" + self.name }
}
