// https://leetcode.com/problems/power-of-two/
// To execute TS directly in shell, use `ts-node main.ts`

function isPowerOfTwo(n: number): boolean {
  // Edge case
  if(n === 0) return false;

  // Number.isInteger on Math.log(n) / Math.log(2) has breaking precision loss
  // Avoid this by rounding log2 instead
  return Math.trunc(Math.log2(n)) === Math.log2(n)
}

console.log(isPowerOfTwo(0))
