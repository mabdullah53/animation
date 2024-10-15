import 'package:animationtutorial/all_animations/aniimated_list/aniimation_model.dart';
import 'package:flutter/material.dart';

class AniimatedList extends StatefulWidget {
  const AniimatedList({super.key});

  @override
  State<AniimatedList> createState() => _AniimatedListState();
}

class _AniimatedListState extends State<AniimatedList> {

  final List<User> selectedUser = [];
  final GlobalKey<AnimatedListState> itemKey = GlobalKey<AnimatedListState>();
  final GlobalKey<AnimatedListState> selectedKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 10,
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Text('Selected Member'),
                    SizedBox(height: 20,),

                    Expanded(
                        child: AnimatedList(
                          key: selectedKey,
                          scrollDirection: Axis.horizontal,
                          initialItemCount: selectedUser.length,
                          itemBuilder: (context,index,animation){
                            return Padding(
                                padding: EdgeInsets.only(
                                  right: 20,
                                ),
                              child: FadeTransition(
                                opacity: animation,
                                child: Column(
                                children: [
                                  SizedBox(width: 50,
                                   child: Text(user[index].name,style: TextStyle(
                                     fontWeight: FontWeight.bold
                                   ),),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Stack(
                                    children: [
                                      Positioned(
                                          child: SizedBox(height: 70,
                                          width: 70,
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                user[index].image
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                          child: GestureDetector(
                                            onTap: (){

                                            },
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3
                                                )
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.close,
                                                  size: 15,
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Expanded(child:
               AnimatedList(
                 key: itemKey,
                 initialItemCount: user.length,
                itemBuilder: (context,index,animation){
                  return GestureDetector(
                    onTap: (){
                    setState(() {
                      if(selectedUser.length>4){
                        selectedKey.currentState?.insertItem(selectedUser.length,
                        duration: Duration(microseconds: 500)
                        );
                        selectedUser.add(user as User);
                        user.remove(user);
                      }
                    });
                    },
                    child: FadeTransition(
                      opacity: animation,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 70,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(user[index].image),
                                backgroundColor: Colors.deepPurpleAccent,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  user[index].name,style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text(
                                    user[index].username,
                                  style: TextStyle(
                                    color: Colors.black45
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )

              )
            ],
          ),
        ),
      ),
    );
  }
}
