import 'package:flutter/material.dart';
import 'package:projectsjuly23/pet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pet> petList = [
    const Pet(
      animalType: 'Dog',
      animalName: 'Golden',
      petLove: '20',
      image: 'assets/images/1.jpg',
    ),
    const Pet(
      animalType: 'Lablador',
      animalName: 'Golden',
      petLove: '18',
      image: 'assets/images/2.jpg',
    ),
    const Pet(
      animalType: 'Dog',
      animalName: 'Cardigan',
      petLove: '12',
      image: 'assets/images/3.jpg',
    ),
    const Pet(
      animalType: 'Cat',
      animalName: 'Street Cat',
      petLove: '17',
      image: 'assets/images/4.jpg',
    ),
    const Pet(
      animalType: 'Cat',
      animalName: 'White Cat',
      petLove: '17',
      image: 'assets/images/5.jpg',
    ),
    const Pet(
      animalType: 'Cat',
      animalName: 'Kitten',
      petLove: '18',
      image: 'assets/images/6.jpg',
    ),
    const Pet(
      animalType: 'Bird',
      animalName: 'House Bird',
      petLove: '15',
      image: 'assets/images/7.jpg',
    ),
    const Pet(
      animalType: 'Bird',
      animalName: 'Parrot',
      petLove: '14',
      image: 'assets/images/8.jpg',
    ),
    const Pet(
      animalType: 'Bird',
      animalName: 'Pink Bird',
      petLove: '15',
      image: 'assets/images/9.jpg',
    ),
    const Pet(
      animalType: 'Bird',
      animalName: 'Talking Parrot',
      petLove: '17',
      image: 'assets/images/10.jpg',
    ),
    const Pet(
      animalType: 'Rat',
      animalName: 'Hamster',
      petLove: '17',
      image: 'assets/images/11.jpg',
    ),
    const Pet(
      animalType: 'Rabbit',
      animalName: 'Brown Rabbit',
      petLove: '16',
      image: 'assets/images/12.jpg',
    ),
    const Pet(
      animalType: 'Rabbit',
      animalName: 'Gray Rabbit',
      petLove: '17',
      image: 'assets/images/13.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFE0DF),
        title: const Center(
          child: Text(
            'Pet Market',
            style: TextStyle(
              fontFamily: 'Balsamiq_Sans',
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 400,
                height: 55,
                child: Stack(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: const Color(0x7FDFE0DF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'Search by pet type',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 22,
                              fontFamily: 'Balsamiq_Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: petList.length,
                itemBuilder: (context, index) {
                  return petList[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
