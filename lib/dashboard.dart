import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 42, 42),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44).withOpacity(0.8),
        automaticallyImplyLeading: true,
        centerTitle: false,
        title: const Text(
          'For Jayflo_tech',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 18),
        ),
        actions: const [
          //header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.cast,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //menu
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        menuList('Tv Shows'),
                        menuList('Movies'),
                        menuList2('Categories '),
                      ],
                    ),
                  ),
                ),
                //first image
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 500,
                      width: 400,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.thedirect.com/media/article_full/suits-cast.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 350),
                            child: Text(
                              'SUITS',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Poppins',
                                fontSize: 60,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Slick',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  '•',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 35, 35),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Witty',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  '•',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 35, 35),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Dramedy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 5)),

                          //play button and add to list
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.play_arrow),
                                    Text(
                                      'Play',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(right: 10)),
                              Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 44, 44, 44),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'My List',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //popular on netflix
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: const Text(
                    'Popular on Netflix',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
                //movie list
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      movieList(
                          'https://i0.wp.com/planetdave.com/wp-content/uploads/2021/12/schemes-in-antiques-movie-poster-one-sheet.jpg?resize=300%2C420&ssl=1'),
                      movieList(
                          'https://play-lh.googleusercontent.com/_bQv_Bua-oPwO9Lzld3n7nrxew6DUHnk0m30Af_lQSVd_D0a2egLp3E-gXW1p-XFwMgBB6Ra_F5OkBYukg'),
                      movieList(
                          'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9155926_b_v10_au.jpg'),
                      movieList(
                          'https://miro.medium.com/v2/resize:fit:554/1*aGQZ2rtl8tfMyDhNiP7RiA.jpeg'),
                      movieList(
                          'https://m.media-amazon.com/images/M/MV5BMWFkMzY3MjMtYzc1ZS00MzhhLTk0YmItNjQ1ZjFmOGJjZWZjXkEyXkFqcGdeQXVyNzc5NDg5Mjc@._V1_FMjpg_UX1000_.jpg'),
                      movieList(
                          'https://m.media-amazon.com/images/M/MV5BMTViNTY2MjMtYmUwOC00ZGYxLThjOWEtYjNjZWU3MTYwYzZmXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                    ],
                  ),
                ),
                //Trending on netflix
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: const Text(
                    'Trending Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
                //trending list
                //movie list
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      movieList2(
                          'https://m.media-amazon.com/images/M/MV5BMTViNTY2MjMtYmUwOC00ZGYxLThjOWEtYjNjZWU3MTYwYzZmXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                      movieList2(
                          'https://i0.wp.com/planetdave.com/wp-content/uploads/2021/12/schemes-in-antiques-movie-poster-one-sheet.jpg?resize=300%2C420&ssl=1'),
                      movieList2(
                          'https://play-lh.googleusercontent.com/_bQv_Bua-oPwO9Lzld3n7nrxew6DUHnk0m30Af_lQSVd_D0a2egLp3E-gXW1p-XFwMgBB6Ra_F5OkBYukg'),
                      movieList2(
                          'https://m.media-amazon.com/images/M/MV5BMWFkMzY3MjMtYzc1ZS00MzhhLTk0YmItNjQ1ZjFmOGJjZWZjXkEyXkFqcGdeQXVyNzc5NDg5Mjc@._V1_FMjpg_UX1000_.jpg'),
                      movieList2(
                          'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9155926_b_v10_au.jpg'),
                      movieList2(
                          'https://miro.medium.com/v2/resize:fit:554/1*aGQZ2rtl8tfMyDhNiP7RiA.jpeg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 30, 30, 30).withOpacity(0.5),
        unselectedItemColor: Color.fromARGB(255, 169, 169, 169),
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'News & Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'My Netflix',
          ),
        ],
      ),
    );
  }

  Widget menuList(text) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 60,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          fontSize: 8,
        ),
      ),
    );
  }

  Widget menuList2(text) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 8,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 14,
          )
        ],
      ),
    );
  }

  Widget movieList(url) {
    return Container(
      height: 150,
      width: 100,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
    );
  }

  Widget movieList2(url) {
    return Container(
      height: 150,
      width: 100,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
      child: SizedBox(
        child: Container(
          width: 10,
          height: 30,
          alignment: Alignment.topRight,
          child: const Image(
            image: NetworkImage(
              scale: 1.0,
              'https://www.netflix.com/tudum/top10/images/top10.png',
            ),
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
