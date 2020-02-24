import Foundation
extension Double
{
func currency()->String
    {
        return "$\(self)"
    }
    
    func kiloMeter() -> String
    {
        let s = String.init(format: "%d km", self)
        return s
    }
}
