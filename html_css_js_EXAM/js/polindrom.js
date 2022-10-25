let s = " ";
let bolleanIsPoli = 0;
//let s = "A man, a plan, a canal: Panama"
//let s= "race a car"
s = s.toLowerCase(); // turnnig all letter to lowercase;
let stringArr = [];
index = 0;
for (let i = 0; i < s.length; i++) {
  if (/[a-zA-Z]/.test(s[i]) === true) {
    stringArr[index] = s[i]; // copy all the letter into array
    index++;
  }
}

function palindrome(arr, n) {
  // Initialise flag to zero.
  let flag = 0;

  // Loop till array size n/2.
  for (let i = 0; i <= n / 2 && n != 0; i++) {
    // Check if first and last element are different
    // Then set flag to 1.
    if (arr[i] != arr[n - i - 1]) {
      flag = 1;
      break;
    }
  }

  // If flag is set then print Not Palindrome
  // else print Palindrome.
  if (flag == 1) console.log("False - Not Palindrome");
  else {
    bolleanIsPoli = 1;
    console.log("True - Palindrome");
  }
}

let n = stringArr.length;

palindrome(stringArr, n);
