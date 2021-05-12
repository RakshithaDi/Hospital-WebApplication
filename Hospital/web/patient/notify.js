
function notify2(email){
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
