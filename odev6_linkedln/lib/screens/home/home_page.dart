import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:odev6_linkedln/data/entity/post.dart';
import 'package:odev6_linkedln/screens/home/components/post_component.dart';
import 'package:odev6_linkedln/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchController = TextEditingController();
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<List<Post>> postUpload() async {
    var postList = <Post>[];

    var post1 = Post(
      id: 1,
      userName: "Yusuf Emre Altun",
      profileTitle: "Software Developer",
      profileImage: "profil1-image.jpeg",
      content: "Deneme Yazısı",
      postImage: "post1-image.jpeg",
      createdAt: "5 gün önce",
    );
    var post2 = Post(
      id: 1,
      userName: "Eren Altun",
      profileTitle: "Programmer",
      profileImage: "profil2-image.jpg",
      content: "Deneme Yazısı",
      postImage: "post2-image.jpg",
      createdAt: "10 gün önce",
    );
    var post3 = Post(
      id: 1,
      userName: "Selin Altun",
      profileTitle: "IT Enginer",
      profileImage: "profil3-image.jpg",
      content: "Deneme Yazısı",
      postImage: "post3-image.jpg",
      createdAt: "2 gün önce",
    );

    postList.add(post1);
    postList.add(post2);
    postList.add(post3);

    return postList;
  }

  @override
  Widget build(BuildContext context) {
    var screenWidht = context.width();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("images/profil1-image.jpeg"),
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            width: context.width() / 1.35,
            height: context.width() / 9,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: context.width() / 18,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              size: context.width() / 18,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      body: FutureBuilder<List<Post>>(
        future: postUpload(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var postList = snapshot.data;
            return ListView.builder(
              itemCount: postList!.length,
              itemBuilder: (context, index) {
                var post = postList[index];
                return PostComponent(post: post);
              },
            );
          } else {
            return Center();
          }
        },
      ),
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: 'Network',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_box),
                    label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    label: 'Messaging',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    label: 'Jobs ',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                showSelectedLabels: true,
                onTap: _onItemTapped,
              ),
              Positioned(
                top: 0,
                left: constraints.maxWidth / 4.95 * _selectedIndex,
                child: Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: constraints.maxWidth / 6,
                  height: 2,
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
