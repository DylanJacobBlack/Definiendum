

// Add event listeners to the "back" and "next" buttons that turn the page
let page_number = 1
document.getElementById('next').addEventListener('click', element => {
  if (true) {
    document.getElementById(`page_${page_number}`).classList.add("hidden")
    document.getElementById(`page_${page_number + 1}`).classList.remove("hidden")
    page_number++
  }
});
document.getElementById('back').addEventListener('click', element => {
  if (page_number > 1) {
    document.getElementById(`page_${page_number}`).classList.add("hidden")
    document.getElementById(`page_${page_number - 1}`).classList.remove("hidden")
    page_number--
  }
});

// Hide modal after click "select definition"
document.getElementById('select').addEventListener('click', element => {
  document.getElementById('modal').classList.add("hidden")
});

//Create event listeners that open a modal when text is selected
const getSelectedText = () => {
  let text = "";
  if (typeof window.getSelection != "undefined") {
    text = window.getSelection().toString();
  } else if (typeof document.selection != "undefined" && document.selection.type == "Text") {
    text = document.selection.createRange().text;
  }
  return text;
}

const doSomethingWithSelectedText = () => {
  const selectedText = getSelectedText();
  if (selectedText) {
    document.getElementById('selected').innerHTML = `${selectedText}`
    document.getElementById('modal').classList.remove("hidden")
    ;
  }
}

document.onmouseup = doSomethingWithSelectedText;
document.onkeyup = doSomethingWithSelectedText;

// Imports the Google Cloud client library
const { Translate } = require('@google-cloud/translate').v2;

// Creates a client
const translate = new Translate();

/**
 * TODO(developer): Uncomment the following lines before running the sample.
 */
const text = 'Hello, world!';
const target = 'ru';

async function translateText() {
  // Translates the text into the target language. "text" can be a string for
  // translating a single piece of text, or an array of strings for translating
  // multiple texts.
  let [translations] = await translate.translate(text, target);
  translations = Array.isArray(translations) ? translations : [translations];
  console.log('Translations:');
  translations.forEach((translation, i) => {
    console.log(`${text[i]} => (${target}) ${translation}`);
  });
}

translateText();
