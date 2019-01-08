import Foundation

let englishAlphabetСapitalLetter: [Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
     "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
let  englishAlphabetLineLetter: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m",
     "n","o","p","q","r","s","t","u","v","w","x","y","z"]

let  russianAplhabetCapitalLetter: [Character] = ["А","Б","В","Г","Д","Е","Ё","Ж","З","И","Й","К","Л","М","Н","О","П",    "Р","С","Т","У","Ф","Х","Ц","Ч","Ш","Щ","Ъ","Ы","Ь","Э","Ю","Я"]
let  russianAplhabetLineLetter: [Character] = ["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п", "р","с","т","у","ф","х","ц","ч","ш","щ","ъ","ы","ь","э","ю","я"]

var outputArrayShift: [Character] = []
var outputArrayKey: [Character] = []

var engAlphaCapLetterSet = Set(englishAlphabetСapitalLetter)
var engAlphaLineLetterSet = Set(englishAlphabetLineLetter)
var rusAlphaCapLetterSet = Set(russianAplhabetCapitalLetter)
var rusAlphaLineLetterSet = Set(russianAplhabetLineLetter)

var keywordSet: Set<Character> = []
