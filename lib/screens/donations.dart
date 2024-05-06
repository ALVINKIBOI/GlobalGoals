import 'package:flutter/material.dart';
import 'package:globalgoalsapp/screens/carddetails.dart';

class Donations extends StatefulWidget {
  const Donations({super.key});

  @override
  State<Donations> createState() => _DonationsState();
}

class _DonationsState extends State<Donations> {
  int type = 1;
  void _handleratio(Object? e) => setState(() {
        type = e as int;
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Donations"),
        leading: const BackButton(),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      border: type == 1
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.4, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: type,
                          onChanged: _handleratio,
                          activeColor: Colors.black12,
                        ),
                        Text(
                          "Google Pay",
                          style: type == 1
                              ? const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black)
                              : const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black),
                        ),
                        const Spacer(),
                        Image.asset(
                          "images/google.jpeg",
                          width: 70,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      border: type == 2
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.4, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                            value: 2,
                            groupValue: type,
                            onChanged: _handleratio,
                            activeColor: Colors.black12,
                          ),
                          Text(
                            "Credit Card",
                            style: type == 2
                                ? const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)
                                : const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black),
                          ),
                         const Spacer(),
                          Image.asset(
                            "images/visa.jpeg",
                            width: 50,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "images/mastercard.jpeg",
                            width: 50,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      border: type == 3
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.4, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Radio(
                          value: 3,
                          groupValue: type,
                          onChanged: _handleratio,
                          activeColor: Colors.black12,
                        ),
                        Text(
                          "Paypal",
                          style: type == 3
                              ? const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black)
                              : const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black),
                        ),
                       const Spacer(),
                        Image.asset(
                          "images/paypal.jpeg",
                          width: 70,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      border: type == 4
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.4, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                            value: 4,
                            groupValue: type,
                            onChanged: _handleratio,
                            activeColor: Colors.black12,
                          ),
                          Text(
                            "Mpesa",
                            style: type == 4
                                ? const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)
                                : const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black),
                          ),
                          const Spacer(),
                          Image.asset(
                            "images/mpesa.jpeg",
                            width: 70,
                            height: 70,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Donation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$40,000",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Goal Supported",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const CardDetails(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(10)),
                  child: const Text(
                    "Proceed to Payment",
                    style: TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
