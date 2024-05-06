
import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  Future addUsersDetails(
    Map<String,dynamic>usersInfoMap,String id)async{
      return await FirebaseFirestore.instance
          .collection("Users")
          .doc(id)
          .set(usersInfoMap);
    }
  
}