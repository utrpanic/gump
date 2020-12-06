import SwiftUI

struct ContentView: View {
    
    @State private var selectedLocalRepo: LocalRepo?
    
    var body: some View {
        NavigationView {
            NavigationPrimary(selectedLocalRepo: $selectedLocalRepo)
            if let selectedLocalRepo = self.selectedLocalRepo {
                NavigationDetail(localRepo: selectedLocalRepo)
            }
        }
        .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
