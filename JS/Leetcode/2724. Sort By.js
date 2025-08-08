/**
 * @param {Array} arr
 * @param {Function} fn
 * @return {Array}
 */
var sortBy = function (arr, fn) {
  return arr.sort((a, b) => {
    const valA = fn(a);
    const valB = fn(b);
    if (valA < valB) return -1;
    if (valA > valB) return 1;
    return 0;
  });
};
