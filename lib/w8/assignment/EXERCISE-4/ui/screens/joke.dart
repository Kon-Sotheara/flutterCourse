import 'package:flutter/material.dart';
import 'package:project/w8/assignment/EXERCISE-4/model/joke_model.dart';
import 'package:project/w8/assignment/EXERCISE-4/ui/theme/theme.dart';

class FavoriteList extends StatefulWidget {
  final List<JokeModel> jokes;
  const FavoriteList({super.key, required this.jokes});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  int? favoriteIndex;

  void isFavSeleected(int jokeIndex) {
    setState(() {
      if (favoriteIndex == jokeIndex) {
        favoriteIndex = null;
      } else {
        favoriteIndex = jokeIndex;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.jokes.length,
      itemBuilder: (context, index) {
        bool isfav = false;
        index == favoriteIndex ? isfav = true : isfav = false;
        return FavoriteCard(
          indexJoke: index,
          joke: widget.jokes[index],
          isfav: isfav,
          onChange: isFavSeleected,
        );
      },
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final int indexJoke;
  final JokeModel joke;
  final bool isfav;
  final ValueChanged<int> onChange;

  void handleOnChange() {
    onChange(indexJoke);
  }

  const FavoriteCard({
    super.key,
    required this.indexJoke,
    required this.joke,
    required this.isfav,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(joke.description),
              ],
            ),
          ),
          IconButton(
            onPressed: handleOnChange,
            icon: Icon(
              isfav ? Icons.favorite : Icons.favorite_border,
              color: isfav ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
