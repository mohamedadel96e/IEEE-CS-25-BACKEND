console.log('A: Script Start'); // into the callback stack (Immediate execution).

setTimeout(() => {
  console.log('F: Timeout');
}, 0); // into the macroTask queue. macrotask queue is processed after the current script execution and all microtasks. macroTask queue -> [F: Timeout]

new Promise((resolve, reject) => {
  console.log('B: Promise Executor');
  resolve(); // Promise Constructor executes immediately, but the .then() callback is scheduled in the microtask queue. 
}).then(() => {
  console.log('E: Promise Then'); // macroTask queue -> [F: Timeout], microtask queue -> [E: Promise Then]
});

queueMicrotask(() => {
  console.log('D: queueMicrotask'); // This is scheduled in the microtask queue, which has higher priority than the macroTask queue. macroTask queue -> [F: Timeout], microtask queue -> [E: Promise Then, D: queueMicrotask]
});

console.log('C: Script End'); // This executes immediately, completing the current script execution. macroTask queue -> [F: Timeout], microtask queue -> [E: Promise Then, D: queueMicrotask]

/* Now we see the microTask queue we found that E then D are in the microtask queue then we see the F in the macroTask queue */

/*
EXECUTION ORDER EXPLANATION:

Output: A → B → C → E → D → F

DETAILED BREAKDOWN:

1. "A: Script Start" - Executes immediately (synchronous)

2. setTimeout() - Callback is scheduled in the macrotask queue for next event loop cycle
   (even with 0ms delay, it's still asynchronous)

3. "B: Promise Executor" - Promise constructor executes immediately (synchronous)
   The resolve() schedules the .then() callback in the microtask queue

4. queueMicrotask() - Schedules callback in the microtask queue

5. "C: Script End" - Executes immediately (synchronous)

6. Event Loop Priority Check:
   - Main thread finished, now process microtask queue FIRST
   - "E: Promise Then" executes (from Promise.then())
   - "D: queueMicrotask" executes (from queueMicrotask())

7. "F: Timeout" - Finally executes from macrotask queue

KEY CONCEPTS:
- Synchronous code runs first
- Microtasks (Promises, queueMicrotask) have higher priority than macrotasks
- Macrotasks (setTimeout, setInterval) run after all microtasks are cleared
- Event loop processes all microtasks before moving to the next macrotask
*/