// Give the service worker access to Firebase Messaging.
// Note that you can only use Firebase Messaging here. Other Firebase libraries
// are not available in the service worker.
importScripts('https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.5.0/firebase-messaging.js');

// Initialize the Firebase app in the service worker by passing in
// your app's Firebase config object.
// https://firebase.google.com/docs/web/setup#config-object
firebase.initializeApp({
    apiKey: "AIzaSyCHTea8bbIN2e4GfiTHE7ywEqGKCkjkJY0",
    authDomain: "central-hospitals.firebaseapp.com",
    projectId: "central-hospitals",
    storageBucket: "central-hospitals.appspot.com",
    messagingSenderId: "77497319312",
    appId: "1:77497319312:web:5eb35ebf7cac318d41fd15",
    measurementId: "G-77Y7N8Y48G"
});

// Retrieve an instance of Firebase Messaging so that it can handle background
// messages.
const messaging = firebase.messaging();