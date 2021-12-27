// https://leetcode.com/problems/letter-combinations-of-a-phone-number/
// To execute TS directly in shell, use `ts-node main.ts`

interface T9NumberDefinitions {
  [key: number]: string[];
}

function letterCombinations(digits: string): string[] {
  if (!digits) return []; // Edge case

  const answer: string[] = [];
  const t9NumbersMap: T9NumberDefinitions = {
    2: ["a", "b", "c"],
    3: ["d", "e", "f"],
    4: ["g", "h", "i"],
    5: ["j", "k", "l"],
    6: ["m", "n", "o"],
    7: ["p", "q", "r", "s"],
    8: ["t", "u", "v"],
    9: ["w", "x", "y", "z"],
  };

  function recurse(currentCombo: string, nextDigits: string): void {
    // Iterates over given digits, adding combo to answer.
    if (currentCombo.length === digits.length) {
      answer.push(currentCombo);
      return;
    }
    const digit = nextDigits[0];
    const letters = t9NumbersMap[parseInt(digit)];

    letters.forEach((letter: string) =>
      recurse(currentCombo + letter, nextDigits.slice(1))
    );
  }

  recurse("", digits);
  return answer;
}

console.log(letterCombinations("2347"));
