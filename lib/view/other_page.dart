import 'package:flutter/material.dart';
import 'package:mvvmpractice/model/user_model.dart';
import 'package:mvvmpractice/view_model/other_view_model.dart';
import 'package:mvvmpractice/widgets/card_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class OtherPage extends StatelessWidget {
  OtherPage({required this.usersList});
  final List<User?>? usersList;

  @override
  Widget build(BuildContext context) {
    return Consumer<OtherViewModel>(
      builder: (BuildContext context, otherViewModel, index) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('OtherPage'),
          ),
          body: AnimationLimiter(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: usersList!.length,
                itemBuilder: (context, index) {
                  var name = usersList![index]!.name;
                  var phone = usersList![index]!.phone;
                  return InkWell(
                    onTap: () {
                      otherViewModel.setValues(name, phone);
                      //print("Name clicked ${otherViewModel.name}");
                      Navigator.pop(context);
                    },
                    child: AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 700),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: CardWidget(
                            name: name,
                            phone: phone,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
