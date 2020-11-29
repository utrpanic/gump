import SwiftUI

struct RootView: View {
    
    @State private var selection: Set<LocalRepo> = [.brunch]
    
    var sidebar: some View {
        List(LocalRepo.allCases, id:\.rawValue,  selection: $selection) { localRepo in
            NavigationLink(localRepo.rawValue, destination: BranchesView().frame(width: 320, height: 640))
        }
        .listStyle(SidebarListStyle())
    }
    
    var body: some View {
        return NavigationView {
            self.sidebar.frame(width: 160, height: 640)
            Text("Content List").frame(width: 320, height: 640)
        }
        .frame(width: 480, height: 640)
    }
}

struct RootView_Previews: PreviewProvider {
    
    static var previews: some View {
        RootView()
    }
}
