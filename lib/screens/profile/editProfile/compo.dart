import 'dart:io';

import 'package:coffee_app/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';

class editComponent extends StatefulWidget {
  const editComponent({Key? key}) : super(key: key);

  @override
  State<editComponent> createState() => _editComponentState();
}

class _editComponentState extends State<editComponent> {
  final image =
      ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 50);
  // late File imageFile;
  // bool imageAvailable = false;
  // late XFile imageFile;

  // pickUploadProfilePic() async {
  //   final image = await ImagePicker().pickImage(
  //     source: ImageSource.gallery,
  //     maxHeight: 512,
  //     maxWidth: 512,
  //     imageQuality: 90,
  //   );
  //   setState(() {
  //     imageFile = image as XFile;
  //     imageAvailable = true;
  //   });
  // }

  // final ref = FirebaseStorage.instance.ref().child("${employeeId.toLowerCase()}_profilepic.jpg");

  //await ref.putFile(File(image!.path));

  //ref.getDownloadURL().then((value){
  // setState(() {
  //profilePicLink = value;
  // });
  // })
  // File? image;
  // Future pickImage() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image == null) return;

  //     final imageTemp = File(image.path);
  //     setState(() => this.image = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            child: Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                color: AppColor.darkLightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(350),
                  bottomRight: Radius.circular(350),
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.lightColor,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 115),
            height: 150,
            width: 150,
            alignment: Alignment.center,
            child: Stack(
              //fit: stackfit.expand

              children: [
                _image != null
                    ? Image.file(_image!, fit: BoxFit.cover)
                    : const Text(''),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.20,
                  backgroundColor: AppColor.darkColor,
                ),
                Positioned(
                  right: -3,
                  bottom: 0,
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: AppColor.darkLightColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: AppColor.lightBrownColor,
                      ),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          _openImagePicker();
                        },
                        child: Icon(
                          Icons.add_photo_alternate_rounded,
                          color: AppColor.lightBrownColor,
                          size: 30,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
