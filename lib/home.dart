import 'package:flutter/material.dart';
import 'package:master_details/details.dart';
import 'package:master_details/userDataModel.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> userName = [
      'Afsana Akter',
      'Monir Hossain',
      'Mehmate Bin Monir',
      'Maryeam Binte Afsana',
      'Ayrin Akter',
      'Rony Hossain',
      'Aftab Ahmed',
      'Tania Akter'
    ];

    List url = [
      'https://st3.depositphotos.com/3591429/15528/i/450/depositphotos_155289468-stock-photo-young-indian-woman-face.jpg',
      'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
      'https://img.freepik.com/premium-photo/photo-document-passport-id-mature-caucasian-man-suit_262388-3596.jpg',
      'https://thumbs.dreamstime.com/b/passport-picture-businesswoman-brown-hair-isolated-white-background-cut-out-49602875.jpg',
      'https://img.freepik.com/premium-photo/indian-girl-cheerful-studio-portrait_53876-55599.jpg',
      'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
      'https://media.istockphoto.com/id/1364917563/photo/businessman-smiling-with-arms-crossed-on-white-background.jpg?s=612x612&w=0&k=20&c=NtM9Wbs1DBiGaiowsxJY6wNCnLf0POa65rYEwnZymrM=',
      'https://img.freepik.com/premium-photo/indian-girl-cheerful-studio-portrait_53876-55599.jpg',
      'https://st2.depositphotos.com/2783505/7767/i/450/depositphotos_77676472-stock-photo-portrait-of-a-blonde-german.jpg'
    ];

    List<String> userEmail = [
      'afsanaakter@gmail.com',
      'monirhossain@gmail.com',
      'mehmatebinmonir@gmail.com',
      'maryeambinteafsana@gmail.com',
      'ayrinakter@gmail.com',
      'ronyhossain@gmail.com',
      'aftabahmed@gmail.com',
      'taniaakter@gmail.com',
      'taniaakter@gmail.com'
    ];

    List<String> userMobile = [
      '01718546528',
      '10913722769',
      '14938172934812',
      '1284921349823',
      '01718546528',
      '10913722769',
      '14938172934',
      '12849213498',
      '12849213498'
    ];

    List<UserDataModel> userData = List.generate(userName.length,
        (index) => UserDataModel(userName[index], url[index], userEmail[index], userMobile[index]));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Master Details"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(userData[index].name),
              leading: SizedBox(
                width: 90,
                height: 120,
                child: Image.network(userData[index].image, fit: BoxFit.contain),
              ),
              subtitle: Text(userData[index].email),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyDetails(
                        userDataModel: userData[index],
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
