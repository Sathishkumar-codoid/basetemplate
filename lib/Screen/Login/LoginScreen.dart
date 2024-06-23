import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:templateproject/Utils/AppTheme.dart';
import 'package:templateproject/Utils/CommonUI.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
 final TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildBody(context),

          ],),
        ),
      )



    );
  }
  Widget _buildBody(BuildContext context){
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Gap(30.h),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(2.h),

                    CommonUI().text(text: "Mobile Number "),
                    Gap(2.h),

                    CommonUI.formField(hinttext: "+91 Enter Mobile Number", editingController:_controller ),
                    Gap(2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonUI.buttonContainer(
                          height: 4.h,
                            width: 25.w,
                            radius: 20,


                            onPressed: (){}, file: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonUI().text(text: "SEND OTP",color: Colors.white)
                          ],
                        )),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }
}
