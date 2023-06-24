import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roadmap/db_helper/cubit/cubit.dart';
import 'package:roadmap/db_helper/cubit/states.dart';
import 'package:roadmap/db_helper/db_second_view.dart';
import 'package:roadmap/db_helper/model/model.dart';

class DbView extends StatelessWidget {
  const DbView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<MyTestCubit, MyStates>(
        builder: (BuildContext context, state) {
          FavouriteModel favouriteModel = FavouriteModel({
            'title': 'Mahmoud Atta Ghazi',
            'year': 2008,
          });
          MyTestCubit myTestCubit = BlocProvider.of<MyTestCubit>(context);
          if (state is ReadMyDbState) {
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      FavouriteModel favouriteModel = FavouriteModel.fromJson(
                          myTestCubit.myFavourite[index]);
                      return ListTile(
                        title: Text(favouriteModel.title),
                        subtitle: Text(favouriteModel.year.toString()),
                        trailing: IconButton(
                          onPressed: () {
                            myTestCubit.deleteMyDb(2007);
                          },
                          icon: const Icon(
                            Icons.delete,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 1.5,
                    ),
                    itemCount: myTestCubit.myFavourite.length,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    myTestCubit.insertMyDb(favouriteModel);
                  },
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DbSecondView(),
                    ));
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            );
          } else if (state is MyLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(
                child: Icon(
              Icons.add_box_outlined,
              size: 40,
            ));
          }
        },
      ),
    );
  }
}
