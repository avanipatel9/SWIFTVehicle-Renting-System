import Foundation
extension Double
{
func addDollarToBill()->String
    {
        return "$\(self)"
    }
    
    func kiloMeter() -> String
    {
        let s = String.init(format: "%d km", self)
        return s
    }
}
