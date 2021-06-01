import Combine

final class BranchesViewModel: ObservableObject {

    private let shell: ShellService
    
    struct State {
        var localRepo: LocalRepo
        var branches: [Branch]
    }
    @Published var state: State
    
    init(localRepo: LocalRepo) {
        self.shell = ShellService()
        self.state = State(localRepo: localRepo, branches: [])
    }
    
    func fetchBranches() {
        let localPath = self.state.localRepo.path
        let git = "git --git-dir \(localPath)/.git --work-tree \(localPath) "
        let gitStatus = git + "status"
        print(gitStatus)
        self.shell.run(command: gitStatus) { (output) in
            print(output)
        }
    }
}
