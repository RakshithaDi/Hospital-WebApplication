function test(abc){
    console.log(abc)
   }

var selected = '';
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

    const chat_main = document.getElementById('chatcont')
    chat_main.innerHTML = ""
    selected = email;
    //console.log(selected)
    //console.log("hdcbsjdhcb"); 

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
                          
            if(sender == "f"){
                textcont.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #bebebe;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;color: rgb(0,0,0);'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont);
            }

            else
            {
                textcont2.innerHTML = "<div class='col-auto d-xl-flex my-auto' style='background: #3840ff;color: rgb(255,255,255);border-radius: 38px;border-width: 1px;border-color: rgb(128,128,128);'><span style='font-family: Cabin, sans-serif;'>" + doc.data().text + "</span></div>";
                chat_main.append(textcont2);
            }

            //textcont.innerText = doc.data().text;
            //chat_main.append(textcont);
            //console.log(sender)
        });
    });

    var docRef = db.collection("messages").doc(email);
    docRef.get().then(function(doc) {
        var mcount = doc.data().messageCount;
        countCheck = mcount;
        //console.log(mcount)
        mcountListener(countCheck,email)     
    });
    var element = document.getElementById("chatcont");
    element.scrollTop = element.scrollHeight;
    notify(selected);       
}

function sendmessage(){

    let message = document.getElementById("mtext").value
    console.log(message)

    var docRef = db.collection("messages").doc(selected);
    docRef.get().then(function(doc) {
        var mcount = doc.data().messageCount;
        mcount = mcount + 1
        
        db.collection("messages").doc(selected).update({
            messageCount: mcount,
            unread: 'yes',
            ltime: firebase.firestore.Timestamp.fromDate(new Date())
        })
        console.log(selected)

        db.collection("messages").doc(selected).collection("messages").doc().set({
            sender: "f",
            text: message,
            order: mcount,
            status: "unread",
            timestamp: firebase.firestore.Timestamp.fromDate(new Date())
        })

        db.collection("notifications").doc('chat-rec').update({
            unread: 'yes',
        })
    });
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
                          
            if(sender == "f"){
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
    var objDiv = document.getElementById("chatcont");
    objDiv.scrollTop = objDiv.scrollHeight;
}

function notify(email){
    db.collection("messages").doc(email).onSnapshot(function(doc) {
        if(doc.data().p_unread == 'yes'){
            if(!alert('You have new messages')){
                db.collection("messages").doc(email).update({
                    p_unread: 'no',
                })
            }
        }
    });
}