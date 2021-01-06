/*
 * Custom code goes here.
 * A template should always ship with an empty custom.js
 */

let accordion = document.getElementsByClassName('contentBx');

for (i = 0; i < accordion.length; i++) {
    accordion[i].addEventListener('click', function() {
        this.classList.toggle('active')
    })
}