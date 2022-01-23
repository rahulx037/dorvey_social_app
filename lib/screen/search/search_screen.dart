import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/buddy_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/home_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  createSearchBar(),
                  SliverAppBar(
                    backgroundColor: Colors.black,
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    pinned: true,
                    floating: true,
                    elevation: 5,
                    centerTitle: true,
                    leading: null,
                    title: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(1.1, 1.1),
                              blurRadius: 5.0),
                        ],
                      ),
                      child: CupertinoTextField(
                        //controller: _filter,
                        keyboardType: TextInputType.text,
                        placeholder: 'Search',
                        placeholderStyle: const TextStyle(
                          color: Color(0xffC4C6CC),
                          fontSize: 14.0,
                          fontFamily: 'Brutal',
                        ),
                        prefix: const Padding(
                          padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
                          child: Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    bottom: const TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(child: Text('Top')),
                        Tab(child: Text('Buddies')),
                        Tab(child: Text('Places')),
                        Tab(child: Text('Food')),
                        Tab(child: Text('BnBs')),
                      ],
                    ),
                  ),
                  //createSearchBar(),
                ];
              },
              body: const TabBarView(
                children: <Widget>[
                  BuddyList(),
                  BuddyList(),
                  BuddyList(),
                  BuddyList(),
                  BuddyList(),
                ],
              ),
            ),
          )),
    );
  }

  SliverAppBar createSearchBar() {
    return const SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back),
    );
  }
}
