import SwiftUI

struct BranchList: View {
    
    @State var viewModel: BranchesViewModel
    var state: BranchesViewModel.State { self.viewModel.state }
    
    var body: some View {
        List() {
            ForEach(state.branches, id: \.name) { branch in
                Text("\(branch.name)")
                    .font(.title)
            }
        }
        .onAppear {
            self.viewModel.fetchBranches()
        }
    }
}

struct BranchList_Previews: PreviewProvider {
    static var previews: some View {
        BranchList(viewModel: BranchesViewModel(localRepo: .brunch))
    }
}
