import SwiftUI

struct NavigationPrimary: View {
    
    @Binding var selectedLocalRepo: LocalRepo?
    
    var body: some View {
        VStack {
            Spacer()
            LocalRepoList(
                selectedLocalRepo: $selectedLocalRepo
            )
            .listStyle(SidebarListStyle())
        }
        .frame(minWidth: 255, maxWidth: 300)
    }
}

struct NavigationPrimary_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPrimary(selectedLocalRepo: .constant(.brunch))
            .environmentObject(UserData())
    }
}
