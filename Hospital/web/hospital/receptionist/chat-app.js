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

var selected = ""
var db = firebase.firestore();

function initChat(email,name){
    var docRef = db.collection("messages").doc(email);
    docRef.get().then(function(doc) {
        if (doc.exists) {
            selected = email;
            loadmessage(email);
            
        } else {
            db.collection("messages").doc(email).set({
                messageCount: 0,
                name: name,
                ltime: firebase.firestore.Timestamp.fromDate(new Date())
            })  
        } 
    });  
}

function mcountListener(countCheck,email){
    db.collection("messages").doc(email)
    .onSnapshot(function(doc) {
        var mcount = doc.data().messageCount;
        //console.log("updated")
        if(countCheck != mcount){
            newmessage(mcount,email)
        }
        //console.log(mcount)
    });
}

function loadmessage(email){
    console.log("clicked");

    const chat_main = document.getElementById('chatcont')
    chat_main.innerHTML = ""
    selected = email;
    console.log(selected)
    document.getElementById("fname").innerText = selected  

    db.collection("messages").doc(email).collection("messages").orderBy("order","asc").get().then(function(querySnapshot) {
        querySnapshot.forEach(function(doc) {
            //console.log(doc.data());
            var sender = doc.data().sender;
            var textcont = document.createElement('div')
            textcont.setAttribute("class","row d-xl-flex justify-content-xl-end")
            textcont.setAttribute("style","margin-bottom: 5px;margin-top: 5px;")

            var textcont2 = document.createElement('div')
            textcont2.setAttribute("class","row d-xl-flex justify-content-xl-start")
            textcont2.setAttribute("style","margin-bottom: 5px;margin-top: 5px;")
                          
            if(sender == "s"){
                textcont.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #bebebe;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;color: rgb(0,0,0);'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont);
            }

            else
            {
                textcont2.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #3840ff;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont2);
            }
        });
    });
    var docRef = db.collection("messages").doc(email);
    docRef.get().then(function(doc) {
        var mcount = doc.data().messageCount;
        countCheck = mcount;
        //console.log(mcount)
        mcountListener(countCheck,email)     
    });
    db.collection("messages").doc(selected).update({
        unread: 'no'
    }) 
    var element = document.getElementById("chatcont");
    element.scrollTop = element.scrollHeight;       
}

function sendmessage(){

    let message = document.getElementById("mtext").value
    //console.log(message)

    var docRef = db.collection("messages").doc(selected);
    docRef.get().then(function(doc) {
        var mcount = doc.data().messageCount;
        mcount = mcount + 1
        
        db.collection("messages").doc(selected).update({
            messageCount: mcount,
            ltime: firebase.firestore.Timestamp.fromDate(new Date()),
            unread: 'no',
            p_unread: 'yes'
        })
        console.log(selected)

        db.collection("messages").doc(selected).collection("messages").doc().set({
            sender: "s",
            text: message,
            order: mcount,
            status: "unread",
            timestamp: firebase.firestore.Timestamp.fromDate(new Date())
        })  
    });
    loadlist();
    document.getElementById("mtext").value = ""     
}

function newmessage(mcount,email){
    const chat_main = document.getElementById('chatcont')
    //console.log(mcount)
    db.collection("messages").doc(email).collection("messages").where("order", "==", mcount)
    .get().then(function(querySnapshot){
        querySnapshot.forEach(function(doc){    
            //console.log(doc.data());
            var sender = doc.data().sender;
            var textcont = document.createElement('div')
            textcont.setAttribute("class","row d-xl-flex justify-content-xl-end")
            textcont.setAttribute("style","margin-bottom: 5px;margin-top: 5px;")

            var textcont2 = document.createElement('div')
            textcont2.setAttribute("class","row d-xl-flex justify-content-xl-start")
            textcont2.setAttribute("style","margin-bottom: 5px;margin-top: 5px;")
                          
            if(sender == "s"){
                textcont.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #bebebe;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;color: rgb(0,0,0);'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont);
            }

            else
            {
                textcont2.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #3840ff;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont2);
            }

        });
    });
    var element = document.getElementById("chatcont");
    element.scrollTop = element.scrollHeight;
}

function loadlist(){

    const listdiv = document.getElementById('list')
    listdiv.innerHTML = "";

    //db.collection("messages").doc(email).collection("messages").orderBy("order","asc").get().then(function(querySnapshot)
    db.collection("messages").orderBy("ltime","desc").get().then(function(querySnapshot) {
        querySnapshot.forEach(function(doc) {

            var box = document.createElement('button')
            box.setAttribute("class","btn btn-dark btn-block text-capitalize text-left border rounded border-light")
            box.setAttribute("type","button")
            box.setAttribute("id",doc.id)
            box.setAttribute("onclick","loadmessage(this.id)")
            box.setAttribute("style","height: 60px;color: rgb(255,255,255);border-width: 0px;")

            if(doc.data().unread == 'no'){
                box.innerHTML = "<span class='text-left float-left' style='color: rgb(255,255,255);border-style: none;'><i class='fa fa-user-circle' style='font-size: 18px;'></i></span><span class='text-left float-left' style='color: rgb(255,255,255);border-style: none;margin-left: 8px;font-family: Cabin, sans-serif; font-size: 18px;'>" + doc.data().name +"</span>"
            }
            else{
                box.innerHTML = "<span class='text-left float-left' style='color: rgb(255,255,255);border-style: none;'><i class='fa fa-user-circle' style='font-size: 18px;'></i></span><span class='text-left float-left' style='color: rgb(255,255,255);border-style: none;margin-left: 8px;font-family: Cabin, sans-serif; font-size: 18px;'>" + doc.data().name +"</span><h5><span class='float-right badge badge-danger'>New</span></h5>"
            }

            


            //box.innerHTML = `<div id=` + doc.id + ` onclick = loadmessage(this.id) class='row s12 card grey darken-1'><div class='col s3 fimg'><i class='center-align valign-wrapper medium material-icons'>account_box</i></div><div class='col s8 ftext'><div class='fname'><h6><b>${doc.data().name}</b></h6></div> <div class='fnew'></div> </div></div>`;


            listdiv.append(box);

        });
    });
    //var docRef = db.collection("messages").doc(email);
    //docRef.get().then(function(doc) {
        //var mcount = doc.data().messageCount;
        //countCheck = mcount;
        //console.log(mcount)
        //mcountListener(countCheck,email)     
    //});       
}

function notify(email){
    db.collection("notifications").doc('chat-rec').onSnapshot(function(doc) {
        if(doc.data().unread == 'yes'){
            loadlist();
        }
    });
}