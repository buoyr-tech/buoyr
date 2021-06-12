import firebase from 'firebase';

const app = firebase.initializeApp({
    apiKey: "AIzaSyB2YYXJozdpEoRTefvHOoCzFNn4WWVLmMg",
    authDomain: "anchor-8c5b8.firebaseapp.com",
    projectId: "anchor-8c5b8",
    storageBucket: "anchor-8c5b8.appspot.com",
    messagingSenderId: "518574769219",
    appId: "1:518574769219:web:0ff8c07cc7c83c8e0c80f6"
});

const firestore = app.firestore();

export { firestore };