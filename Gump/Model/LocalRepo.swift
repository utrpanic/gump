
enum LocalRepo: String, CaseIterable {
    
    case brunch = "ro-brunc-ios"
    case tistory = "ro-tistory-ios"
    
    var path: String {
        return "~/Development/projects/" + self.rawValue
    }
}
