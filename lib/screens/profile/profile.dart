
import 'package:coffee_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {


    return  Center(
      child: TextButton(
        onPressed: () async {
          context.read<AuthenticationService>().signOut();
        },
        child: Text('Sign out'),
      ),
    );
  }
}