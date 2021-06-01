import SwiftUI

struct LocalRepoList: View {
    
    @EnvironmentObject private var userData: UserData
    @Binding var selectedLocalRepo: LocalRepo?
    
    var body: some View {
        List(selection: $selectedLocalRepo) {
            ForEach(userData.localRepos, id: \.name) { localRepo in
                Text("\(localRepo.name)")
                    .font(.headline)
                    .tag(localRepo)
            }
        }
    }
}

struct LocalRepoList_Previews: PreviewProvider {
    static var previews: some View {
        LocalRepoList(selectedLocalRepo: .constant(.brunch))
            .environmentObject(UserData())
    }
}
