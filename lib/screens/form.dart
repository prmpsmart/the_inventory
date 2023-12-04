import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_inventory/commons/blue_button.dart';
import 'package:the_inventory/screens/success.dart';

import '../commons/entry.dart';
import '../commons/notify.dart';
import '../data/user.dart';

class FormScreen extends StatefulWidget {
  final bool isStore;
  const FormScreen({required this.isStore, super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final usernameC = TextEditingController();
  final emailC = TextEditingController();
  final genderC = TextEditingController();
  final dobC = TextEditingController();
  final passwordC = TextEditingController();

  @override
  void initState() {
    super.initState();

    usernameC.text = 'prmpsmart';
    emailC.text = 'prmpsmart@gmail.com';
    genderC.text = 'Male';
    dobC.text = '26/07/1999';
    passwordC.text = 'passw';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: const EdgeInsets.only(top: 20),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
              // 10.verticalSpace,
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal information",
                      style: TextStyle(
                        fontSize: 24.spMax,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "We’ll send a verification code so make sure it is your email address",
                      style: TextStyle(
                        fontSize: 14.spMax,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    20.verticalSpace,
                    Entry(
                      label: 'Username',
                      hintText: 'Choose a  username',
                      controller: usernameC,
                    ),
                    20.verticalSpace,
                    Entry(
                      label: 'Email address',
                      hintText: 'Enter your email address',
                      controller: emailC,
                    ),
                    20.verticalSpace,
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 12.spMax,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    10.verticalSpace,
                    DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            gapPadding: 0,
                          ),
                        ),
                        value: 'Male',
                        isExpanded: true,
                        style: TextStyle(
                          fontSize: 14.spMax,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(.6),
                        ),
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Male',
                            child: Text('Male'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Female',
                            child: Text('Female'),
                          ),
                        ],
                        onChanged: (value) {
                          genderC.text = value ?? '';
                        }),
                    20.verticalSpace,
                    Entry(
                      label: 'Date of Birth',
                      hintText: 'DD/MM/YYYY',
                      controller: dobC,
                      readOnly: true,
                      onTap: () async {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        ).then((value) => dobC.text =
                            '${value!.day}/${value.month}/${value.year}');
                      },
                    ),
                    20.verticalSpace,
                    Entry(
                      label: 'Password',
                      hintText: 'Suggest a strong password',
                      controller: passwordC,
                    ),
                    30.verticalSpace,
                    BlueButton(
                      width: 1.sw,
                      text: 'Next',
                      onPressed: () {
                        final username = usernameC.text;
                        final email = emailC.text;
                        final dob = dobC.text;
                        final gender = genderC.text;
                        final password = passwordC.text;

                        if (username.isNotEmpty &&
                            email.isNotEmpty &&
                            dob.isNotEmpty &&
                            gender.isNotEmpty &&
                            password.isNotEmpty) {
                          final user = User(
                            username: username,
                            email: email,
                            dob: dob,
                            gender: gender,
                            password: password,
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Success(user: user),
                            ),
                          );
                        } else {
                          notify(
                            context,
                            'Fill every field to proceed!',
                            isError: true,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
