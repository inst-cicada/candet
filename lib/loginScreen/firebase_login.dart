import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth=FirebaseAuth.instance;
final googleSignIn=GoogleSignIn();


Future<bool> gSignIn() async{
  final GoogleSignInAccount googleSignInAccount=await googleSignIn.signIn();

  if(googleSignInAccount!=null){
    GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;
    AuthCredential credential=GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    final User user = (await auth.signInWithCredential(credential)).user;


    return Future.value(true);

  }

}

Future<bool> eSignIn(String eMail,String passWord) async{
  try{

    final User user=(await auth.signInWithEmailAndPassword(email: eMail, password: passWord)).user;
    return Future.value(true);

  }catch(e) {

    switch(e.Code){
      case 'ERROR_INVALID_EMAIL':
        print('Error');
        return Future.value(false);
    }

  }

}

Future<bool> signOut() async{
  User user= await auth.currentUser;
  if(user.providerData[1].providerId=='google.com')
    {
      await googleSignIn.signOut();
    }
  else{
    await auth.signOut();
  }
  await auth.signOut();

}

Future<String> userDesc() async{
  final User user=await auth.currentUser;
  if(user.providerData[1].providerId=='google.com')
    {
      print(user.email);
    }
}