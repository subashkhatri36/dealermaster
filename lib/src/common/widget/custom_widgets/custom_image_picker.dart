import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomImagePicker extends StatelessWidget {
  final Function(String) onImageSelected;
  final BuildContext context;
  final String label;

  const CustomImagePicker({
    Key? key,
    required this.onImageSelected,
    required this.context,
    this.label = "Image Picker",
  }) : super(key: key);

  _imgFromCamera() async {
    // String image = await ImagePickerHelper.openCamera();
    // onImageSelected(image);
  }

  _imgFromGallery() async {
    // String image = await ImagePickerHelper.openGallery();
    // onImageSelected(image);
  }

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      label: label,
      onPressed: () => showbottomModal(),
    );
  }

  showbottomModal() {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    onTap: () {
                      _imgFromGallery();
                      Navigator.pop(context);
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    _imgFromCamera();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }
}
