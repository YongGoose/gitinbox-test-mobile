import ArgumentParser
import Collections
import Foundation
import Logging

@main
struct Main: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "gitinbox-test-mobile",
        abstract: "Dogfooding sandbox for GitInbox bot notifications."
    )

    func run() throws {
        let log = Logger(label: "gitinbox-test-mobile")
        var queue = Deque<String>()
        queue.append("hello")
        queue.append("from")
        queue.append("spm")
        log.info("queue=\(Array(queue))")
    }
}
