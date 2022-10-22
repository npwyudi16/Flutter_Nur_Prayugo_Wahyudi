import 'package:finite_state_machine/src/model/api/user_api.dart';
import 'package:finite_state_machine/src/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final getUser = Provider.of<UserViewModel>(context, listen: false);
      await getUser.getAllUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Data User'),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Consumer(
              builder: (context, UserViewModel userViewModel, child) {
                if (userViewModel.state == UserViewState.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (userViewModel.state == UserViewState.loaded) {
                  return listUser();
                } else if (userViewModel.state == UserViewState.error) {
                  return const Center(
                    child: Text('Fetch Data Failed'),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ));
  }

  Widget listUser() {
    return FutureBuilder<List>(
      future: UserAPI().fetchUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              final user = snapshot.data![index];
              return ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text(user.email),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
              );
            },
            itemCount: snapshot.data!.length,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
