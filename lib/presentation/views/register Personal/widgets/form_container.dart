import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_assessment_flutter/presentation/resources/dimension_manager.dart';
import 'package:mobile_assessment_flutter/presentation/views/register%20Personal/widgets/textfield_container.dart';

class FormContainer extends StatelessWidget {
  //  controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  //  key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFieldContainer(
            controller: _nameController,
            title: 'Full Name',
            validator: (val) {},
          ),
          SizedBox(
            height: getHeight(20),
          ),
          TextFieldContainer(
            controller: _emailController,
            title: ' Your Email',
            validator: (val) {},
          ),
          SizedBox(
            height: getHeight(20),
          ),
          TextFieldContainer(
            controller: _phoneController,
            title: 'Phone Number',
            validator: (val) {},
          ),
          SizedBox(
            height: getHeight(20),
          ),
          TextFieldContainer(
            controller: _passwordController,
            title: 'Password',
            validator: (val) {},
          ),
          SizedBox(
            height: getHeight(20),
          ),
          TextFieldContainer(
            controller: _confirmpasswordController,
            title: 'Confirm Password',
            validator: (val) {},
          ),
          SizedBox(
            height: getHeight(20),
          ),
        ],
      ),
    );
  }
}
