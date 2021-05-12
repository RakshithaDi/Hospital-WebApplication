importScripts('https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.5.0/firebase-messaging.js');

firebase.initializeApp({
    apiKey: "AIzaSyCHTea8bbIN2e4GfiTHE7ywEqGKCkjkJY0",
    authDomain: "central-hospitals.firebaseapp.com",
    projectId: "central-hospitals",
    storageBucket: "central-hospitals.appspot.com",
    messagingSenderId: "77497319312",
    appId: "1:77497319312:web:5eb35ebf7cac318d41fd15",
    measurementId: "G-77Y7N8Y48G"
});

const messaging = firebase.messaging();

