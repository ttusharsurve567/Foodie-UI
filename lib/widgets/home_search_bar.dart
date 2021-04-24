import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
          onTap: () {
            showSearch(context: context, delegate: DataSearch());
          },
          child: Container(
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                prefixIcon: Icon(Icons.search),
                hintText: 'Restaurants, foods and drinks...',
                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                focusColor: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 3.0,
                )
              ],
            ),
          )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final foods = [
    'Rasmalai',
    'Rasgulla',
    'Chicken Biryani',
    'Chole Bhature',
    'Chana Masala',
    'Chicken Lollypop'
  ];

  final recentFood = ['Chana Masala', 'Chicken Lollypop'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentFood
        : foods.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (ctx, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
