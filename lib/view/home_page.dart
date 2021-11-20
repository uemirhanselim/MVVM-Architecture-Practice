import 'package:flutter/material.dart';
import 'package:mvvmpractice/view_model/home_view_model.dart';
import 'package:mvvmpractice/view_model/other_view_model.dart';
import 'package:mvvmpractice/widgets/app_loading.dart';
import 'package:provider/provider.dart';
import 'other_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel?>(
      builder: (BuildContext context, homeViewModel, index) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              color: Colors.cyan,
              child: _onStarting(homeViewModel!, context),
            ),
          ),
        );
      },
    );
  }
}

_onStarting(HomeViewModel homeViewModel, BuildContext context) {
  if (homeViewModel.loading) return AppLoading();
  final viewModel = Provider.of<OtherViewModel>(context, listen: true);
  return Scaffold(
    body: Column(
      children: [
        Center(child: Text('${viewModel.name}\n${viewModel.phone}')),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OtherPage(
                            usersList: homeViewModel.userModelList,
                          )));
            },
            child: const Text('Other Page =>')),
      ],
    ),
  );
}
