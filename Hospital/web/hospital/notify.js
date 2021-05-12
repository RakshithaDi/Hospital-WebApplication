var firebaseConfig = {
    apiKey: "AIzaSyCHTea8bbIN2e4GfiTHE7ywEqGKCkjkJY0",
    authDomain: "central-hospitals.firebaseapp.com",
    projectId: "central-hospitals",
    storageBucket: "central-hospitals.appspot.com",
    messagingSenderId: "77497319312",
    appId: "1:77497319312:web:5eb35ebf7cac318d41fd15",
    measurementId: "G-77Y7N8Y48G"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase.analytics();

function notify2(){
    db.collection("notifications").doc("pharmacy").onSnapshot(function(doc) {
        if(doc.data().new == 'yes'){
            if(!alert('New orders are available!')){
                db.collection("messages").doc(email).update({
                    new: 'no',
                })
                window.location.reload();
            }
        }
    });
}

document.getElementById('moreText').onclick = function () {
    db.collection("notifications").doc("pharmacy").update({
        new: 'yes',
    })
}
