enum Status: String {
    case success = "Success"
    case failure = "Failure"

    init(rawValue: String = "") {
        switch rawValue {
        case "Success":
            self = .success
        case "Failure":
            self = .failure
        default:
            self = .failure // or some default case
        }
    }
}

// Creating instances of Status
let status1 = Status() // Defaults to .failure or some default case
let status2 = Status(rawValue: "Success") // Initializes to .success
