import Foundation

@objc
public class SwiftEnd : NSObject, ObservableObject {

    var shim : Shim?

    override public init() {
        super.init()
        self.shim = Shim( self )
    }

    func callToCpp( val : Int32 ) -> Int32 {
        print ( "BEGIN SwiftEnd.callToCpp( \(val) )")
        let rtnVal = shim!.call( toCpp: val )
        print ( "END SwiftEnd.callToCpp() Returning \(rtnVal)." )
        return rtnVal
    }

    @objc func receiveFromCpp( _ val : Int32 ) -> Int32 {
        print ( "BEGIN SwiftEnd.receiveFromCpp( \(val ) )" )
        let rtnVal = val + 100
        print ( "END SwiftEnd.receiveFromCpp() Returning \(rtnVal)." )
        return rtnVal
    }
}
