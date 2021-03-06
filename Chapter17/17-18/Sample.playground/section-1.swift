import Foundation

struct Contact {
    var email: String?
    var mobile: String?
    var fax: String?
    
    init() {
        println("new Contact instance")
    }
}

class Person {
    var fullName = "John doe"
    var birthDate = NSDate()
    
    lazy var contact = Contact()
    
    var SSN = ""
    var gender: Character? {
        get {
            if countElements(SSN) == 14 {
                var components = Array(SSN)
                var ch = components[7]
                
                switch ch {
                case "1":
                    return "M"
                case "2":
                    return "F"
                default:
                    return nil
                }
            }
            
            return nil
        }
        set(newGender) {
            var components = Array(SSN)
            
            if newGender == "M" {
                components[7] = "1"
            }
            else if newGender == "F" {
                components[7] = "2"
            }
            else {
                // do nothing
            }
            
            SSN = String(components)
        }
    }
}

