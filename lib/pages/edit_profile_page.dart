import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/app_text_field.dart';
import 'package:flutter_application_2/components/tool_bar.dart';
import 'package:flutter_application_2/components/user_avatar.dart';
import 'package:flutter_application_2/config/app_strings.dart';
import 'package:flutter_application_2/styles/app_color.dart';
import 'package:flutter_application_2/styles/app_text.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'EditProfilePage',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: UserAwatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),

              // TextField(
              //   decoration: InputDecoration(

              //     hintText: 'Fisrt Name',
              //     hintStyle: TextStyle(color: Colors.amber),
              //     labelText: 'First Name',
              //     labelStyle: TextStyle(color: Colors.white),

              //     border: const UnderlineInputBorder(
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(12),
              //       ),
              //     ),

              //     focusedBorder: const UnderlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(12)),
              //       borderSide: BorderSide(color: Colors.transparent),
              //     ),

              //   filled: true,
              //   fillColor: AppColors.fieldColor,
              //   ),
              // ),

              AppTextField(hint: AppStrings.firstName),

              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.locaion),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.birthday),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 6, right: 6, top: 6),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        AppStrings.gender,
                        style: AppText.body1.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                      
                      children: [
                        Expanded(
                          child: RadioListTile(
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.all(0),
                            title: Text(AppStrings.male),
                            value: Gender.male,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(
                                () {
                                  gender = Gender.male;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity
                                  .minimumDensity, //radioButtons ko adjust krta hai
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.all(0),
                            title: Text(AppStrings.female),
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(
                                () {
                                  gender = Gender.female;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            contentPadding: EdgeInsets.all(0),
                            title: Text(AppStrings.other),
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(
                                () {
                                  gender = Gender.other;
                                },
                              );
                            },
                          ),
                        ),
                      ],
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
