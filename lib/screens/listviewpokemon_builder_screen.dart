import 'package:flutter/material.dart';

class ListviewpokemonBuilderScreen extends StatefulWidget {
  const ListviewpokemonBuilderScreen({super.key});

  @override
  State<ListviewpokemonBuilderScreen> createState() =>
      _ListviewpokemonBuilderScreenState();
}

class _ListviewpokemonBuilderScreenState
    extends State<ListviewpokemonBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      print(
          'pixels ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}'
      );
      if(scrollController.position.pixels >= scrollController.position.maxScrollExtent)  
        fetchData();
    });
  }

  Future<void> fetchData() async {
    if(isLoading) return;
    isLoading = true;
    setState(() {
      
    });
    await Future.delayed(Duration(seconds: 3));
    addFive();
    isLoading = false;
  }

  Future<void> onRefresh() async {
    Future.delayed(Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFive();
  }

  void addFive() {
    final lastId = imagesIds.last;
    // Se le va sumando al último id 1, 2, 3, 4, 5
    imagesIds.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e)
    );
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: Colors.redAccent,
                onRefresh: onRefresh,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: imagesIds.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                    );
                  },
                ),
              ),
              if(isLoading)
                Positioned(
                  bottom: 40,
                  left: (size.width/2) - 30,
                  child: const _CustomContainerCharge()
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomContainerCharge extends StatelessWidget {
  const _CustomContainerCharge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      height: 60,
      width: 60,
      child: CircularProgressIndicator(
        color: Colors.redAccent,
      ),
    );
  }
}
