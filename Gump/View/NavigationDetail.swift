import MapKit
import SwiftUI

struct NavigationDetail: View {
    
    @EnvironmentObject var userData: UserData
    var localRepo: LocalRepo
    
    var localRepoIndex: Int {
        userData.localRepos.firstIndex(where: { $0.name == localRepo.name })!
    }
    
    var body: some View {
        Text("브랜치들")
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(localRepo: .brunch)
            .environmentObject(UserData())
    }
}
