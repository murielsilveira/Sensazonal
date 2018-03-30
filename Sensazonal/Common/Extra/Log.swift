import Foundation

class Logger {

    static var shared: Logger = Logger()

    func notImplemented(_ file: String, _ function: String, _ line: Int) {
        fatalError("\(#function): \(function) at \(file):\(line)")
    }

}
