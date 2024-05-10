import Foundation

// Define a dispatch queue
let queue = DispatchQueue(label: "com.example.queue", attributes: .concurrent)

// Create a dispatch group
let group = DispatchGroup()

// Add tasks to the group
queue.async(group: group) {
    // Task 1
    print("Task 1 started")
    // Simulating a task that takes some time
    sleep(2)
    print("Task 1 finished")
}

queue.async(group: group) {
    // Task 2
    print("Task 2 started")
    // Simulating a task that takes some time
    sleep(3)
    print("Task 2 finished")
}

queue.async(group: group) {
    // Task 3
    print("Task 3 started")
    // Simulating a task that takes some time
    sleep(1)
    print("Task 3 finished")
}

// Notify when all tasks are complete
group.notify(queue: .main) {
    print("All tasks have finished!")
}

print("Waiting for tasks to finish...")

// This will block the main thread until all tasks are complete
group.wait()

print("All tasks have completed and main thread is unblocked.")
