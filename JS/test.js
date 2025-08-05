console.log('1: Script start');

// A Macrotask
setTimeout(() => {
  console.log('5: Timeout callback');
}, 0);

// A synchronous task that creates a Microtask
Promise.resolve().then(() => {
  console.log('3: Promise 1 resolved');
}).then(() => {
  console.log('4: Promise 2 resolved');
});

// A synchronous task
console.log('2: Script end');