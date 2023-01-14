import SwiftUI

struct ContentView: View {

    @EnvironmentObject var swiftEnd : SwiftEnd

    @State private var result : String = "CPP not yet called."

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button("Round Trip from Swift to CPP and back to Swift.")
                {
                    let rtnVal = swiftEnd.callToCpp( val : 100 )
                    result = String( rtnVal )
                }
            Text(result)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
