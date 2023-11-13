// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical";
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook";
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric";
// Expected output: "3cc3ntr1c"
    describe("Message", () => {
    it("returns a string with a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i'' to 1, and 'o' to 0.", () => {
        expect(Message(secretCodeWord1)).toEqual("L4ck4d41s1c4l");
        expect(Message(secretCodeWord2)).toEqual("G0bbl3dyg00k");
        expect(Message(secretCodeWord3)).toEqual("3cc3ntr1c");
        })
    })
// b) Create the function that makes the test pass.

function Message(input) {
    const replace = {
      'a': '4',
      'e': '3',
      'i': '1',
      'o': '0',
      'A': '4',
      'E': '3',
      'I': '1',
      'O': '0'

    };
  
    return input.split('').map(char => replace[char] || char).join('');
  }


// Pseudo code:
// First we initialize an empty string to store our results. (message)
// we use .map to iterate through each character 
// if the character is a vowel that we have in our replace then the letter gets replaced for whatever we have substituted
// im not sure if this is hard coding but i also input the vowels in capital letters so there wouldnt be any confusio. 
// I did this because i kept getting an error 



// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("Poker", () => {
    it("takes in an array of 5 numbers and determines whether or not the array is a full house. A full house is exactly one pair and one three of a kind.", () => {
        expect(FullHouse(hand1)).toEqual(true);
        expect(FullHouse(hand2)).toEqual(false);
        expect(FullHouse(hand3)).toEqual(false);
        expect(FullHouse(hand4)).toEqual(true);
        })
    })

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

//ReferenceError: Poker is not defined This is a good error

function FullHouse(hand) {
    const count = {};
  
    hand.forEach(num => {
      count[num] = (count[num] || 0) + 1;
    });

    const uniqueNum = Array.from((Object.values(count)));

  return uniqueNum.length === 2 && (uniqueNum.includes(2) || uniqueNum.includes(3));

}
// created a function called fullhouse with a parameter called hand
// now we created a method to iterate through each number in our hand. if we have seen the number in our count we increase the count by 1 if we havent seen it we start the count at 1
// convert the number of counts in the object to an array of unique count numbers
// The return is checking if theres anything that includes a pair, or three of a kind
