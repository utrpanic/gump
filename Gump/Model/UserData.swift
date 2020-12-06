import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var localRepos = LocalRepo.allCases
}
