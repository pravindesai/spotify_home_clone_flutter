import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spotify_home_clone_flutter/network/ApiService.dart';
import 'package:spotify_home_clone_flutter/network/model/person.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Person person = Person();
  ApiService apiService = ApiService();

  void setPerosnState(Person p) {
    setState(() {
      person = p;
    });
  }

  Future<void> getData() async {
    Person data = (await apiService.getCurrentProfile());
    setPerosnState(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    String avatar = person.data?.avatar == null ? "" : person.data!.avatar!;
    String currentDate =
        DateFormat('dd-MMMM-yyyy').format(DateTime.now()).toString();
    double height = MediaQuery.of(context).size.height;

    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: CircleAvatar(
                  radius: 80,
                  backgroundImage:
                      placeholderImage(person.data?.firstName != null, avatar)),
            ),
            const SizedBox(
              height: 15,
            ),
            conditionalWidget(person.data?.firstName != null,
                person.data?.firstName, person.data?.lastName),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Premium end's on",
                      style: TextStyle(color: Colors.white)),
                  Text(currentDate,
                      style: const TextStyle(color: Colors.red, fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Premium", style: TextStyle(color: Colors.white)),
                  Text("\$10.99",
                      style: TextStyle(color: Colors.green, fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            availablePremiums(),
          ]),
          const SizedBox(
            height: 180,
          ),
          logOutButton(context),
        ]));
  }

  Widget logOutButton(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      shadowColor: Colors.grey,
      color: Colors.blueGrey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: width,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Log out",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget conditionalWidget(bool condition, String? fName, String? lName) {
    if (condition) {
      return Text(fName! + " " + lName!,
          style: const TextStyle(fontSize: 22, color: Colors.white));
    } else {
      return Container();
    }
  }

  ImageProvider placeholderImage(bool condition, String? imgUrl) {
    if (condition) {
      return NetworkImage(imgUrl!);
    } else {
      return const AssetImage("images/profile.png");
    }
  }

  Widget availablePremiums() {
    return SizedBox(
      child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 12, left: 12),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SubCard("Weekly", "0.99"),
              SubCard("Monthly", "1.99"),
              SubCard("3-Months", "3.99"),
              SubCard("6-Months", "5.99"),
              SubCard("Yearly", "7.99"),
            ],
          )),
    );
  }

  Widget SubCard(String name, String price) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey,
      color: Colors.blueGrey,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "\$ $price",
              style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.lightGreenAccent),
            ),
          ],
        ),
      ),
    );
  }
}
