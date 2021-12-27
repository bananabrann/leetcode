// https://leetcode.com/problems/number-complement/

function findComplement(num: number): number {
  const complementaryBinary: string = num
    .toString(2)
    .replace(/[01]/g, (digit) => (digit == "0" ? "1" : "0"));

  return parseInt(complementaryBinary, 2)
}

console.log(findComplement(5));
