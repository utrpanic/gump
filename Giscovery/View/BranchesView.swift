import SwiftUI

struct BranchesView: View {
    
    var localRepo: LocalRepo = .brunch
    @State var branches: [Branch] = []
    
    var body: some View {
        return VStack {
            Button("Black Alert") {
                self.blackAlert()
            }
        }
    }
    
    private func blackAlert() {
        let process = Process()
        process.launchPath = "/usr/bin/git"
//        process.arguments = ["clone", "https://github.daumkakao.com/blogdevteam/brunch-ios.git"]
        process.terminationHandler = { process in
            
        }
        process.launch()
//        let executableURL = URL(fileURLWithPath: "/usr/bin/git")
//        try! Process.run(executableURL,
//                         arguments: ["branch"],
    }
    
    @discardableResult
    func shell(_ app: String, _ args: String...) -> Int32 {
        let task = Process()
        task.launchPath = "/usr/bin/\(app)"
        task.arguments = args
        task.launch()
        task.waitUntilExit()
        return task.terminationStatus
    }
}
