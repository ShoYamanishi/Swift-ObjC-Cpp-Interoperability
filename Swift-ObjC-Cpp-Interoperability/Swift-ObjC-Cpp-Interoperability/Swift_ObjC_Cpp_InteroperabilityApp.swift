import SwiftUI

@main
struct Swift_ObjC_Cpp_InteroperabilityApp: App {

    let swiftEnd = SwiftEnd()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject( swiftEnd )
        }
    }
}
