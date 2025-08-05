/**
 * @param {Array<Function>} functions
 * @return {Promise<any>}
 */
var promiseAll = function (functions) {
  return new Promise((resolve, reject) => {
    let results = new Array(functions.length).fill(null);
    let count = 0;
    functions.forEach((fn, index) => {
      fn()
        .then((val) => {
          results[index] = val;
          count++;
          if (count === functions.length) {
            resolve(results);
          }
        })
        .catch((err) => reject(err));
    });
  });
};

/**
 * const promise = promiseAll([() => new Promise(res => res(42))])
 * promise.then(console.log); // [42]
 */
