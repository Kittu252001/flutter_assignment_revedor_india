import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatelessWidget {
  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ListView(
          children: [
            imageprofiles(),
            SizedBox(
              height: 20,
            ),
            bottomsheet(),
            SizedBox(
              height: 20,
            ),
            nameTextField(),
            SizedBox(
              height: 20,
            ),
            dobField(),
            SizedBox(
              height: 20,
            ),
            genderTextField(),
            SizedBox(
              height: 20,
            ),
            heightTextField(),
            SizedBox(
              height: 20,
            ),
            weightTextField(),
            SizedBox(
              height: 20,
            ),
            savefeild(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(' Profile Page'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
    );
  }
}

Widget imageprofiles() {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage(
            'images/image copy 3.jpg',
          ),
        ),
        Positioned(
          bottom: 20,
          height: 20,
          child: InkWell(
            onTap: () {
              var context;
              showModalBottomSheet(
                  context: context,
                  builder: ((BuildContext context) => bottomsheet()));
            },
            child: (Icon(
              Icons.add_a_photo,
              color: Colors.grey,
              size: 40,
            )),
          ),
        )
      ],
    ),
  );
}

Widget bottomsheet() {
  return Container(
    height: 100,
    width: 100,
    child: Column(
      children: [
        Text(
          "Choose profile photo",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
              label: Text(
                "camera",
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.image),
              label: Text("gallery"),
            ),
          ],
        )
      ],
    ),
  );
}

Widget nameTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      prefixIcon: Icon(
        Icons.person,
        color: Colors.lightBlue.shade900,
      ),
      labelText: ("Name"),
      helperText: ("Name Cannot be empty"),
      fillColor: Colors.white,
    ),
  );
}

Widget dobField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      prefixIcon: Icon(
        Icons.calendar_today,
        color: Colors.lightBlue.shade900,
      ),
      labelText: ("Date Of Birth"),
      helperText: ("Enter dd/mm/yyyy"),
    ),
  );
}

Widget genderTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      prefixIcon: Icon(
        Icons.male_outlined,
        color: Colors.lightBlue.shade900,
      ),
      labelText: ("Gender"),
      helperText: ("Male/Female"),
    ),
  );
}

Widget heightTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      prefixIcon: Icon(
        Icons.height_sharp,
        color: Colors.lightBlue.shade900,
      ),
      labelText: ("Height"),
      helperText: ("Enter Your height"),
    ),
  );
}

Widget weightTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      prefixIcon: Icon(
        Icons.monitor_weight_rounded,
        color: Colors.lightBlue.shade900,
      ),
      labelText: ("Weight"),
      hintStyle: TextStyle(color: Colors.black),
      helperText: ("Enter Your weight"),
    ),
  );
}

Widget savefeild() {
  return Center(
    child: Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
          child: Text(
            'Save',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}
