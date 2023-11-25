import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/components/containers/button_containers.dart';

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  final player = AudioPlayer();
  bool isPlaying = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 156, 186),
        title: const Text(
          'Quran',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonContainers(
              image:
                  'https://wallpapers.com/images/featured/nature-2ygv7ssy2k0lxlzu.jpg',
              text: 'al-Fatiha',
              subtext: '1',
              baskych: () {
                if (isPlaying) {
                  player.pause();
                } else {
                  player.play(
                    AssetSource('assets_note1.wav'),
                  );
                }
              },
            ),
            ButtonContainers(
              image:
                  'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
              text: 'al-Baqara',
              subtext: '2',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://images.unsplash.com/photo-1618588507085-c79565432917?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHwwhttps://images.unsplash.com/photo-1618588507085-c79565432917?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHww',
              text: 'al-Imran',
              subtext: '3',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://as2.ftcdn.net/v2/jpg/06/21/41/51/1000_F_621415139_cBuryb4gQavsjDqm1hclBxxQjINqBXcP.jpg',
              text: 'an-Nisa',
              subtext: '4',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://as1.ftcdn.net/v2/jpg/05/47/76/94/1000_F_547769482_sKqPdN0tSmfRHZTA6s6OvGsDzJbU9WPQ.jpg',
              text: 'al-Ma`idah',
              subtext: '5',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/05/48/56/38/240_F_548563894_s5tGFJjPhc7lp5uG4iJkR77QbgvrKr9e.jpg',
              text: 'al-An`am',
              subtext: '6',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/05/80/23/58/240_F_580235885_U4chyUzbrzKLp5HsDYfiB4xEPx5jUGOe.jpg',
              text: 'al-A`raf',
              subtext: '7',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/00/67/19/20/240_F_67192048_tZSJLs1mvE3xwwVDH2rUr90PAygcHfA0.jpg',
              text: 'al-Anfal',
              subtext: '8',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/04/37/46/32/240_F_437463230_G6f594Z2FGtsUd2xu1PLOz6N45hBIApP.jpg',
              text: 'at-Taubah',
              subtext: '9',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/05/48/56/38/240_F_548563836_W9xw2Fjzqil2NYtqIe7K5e0n0jZlQd7y.jpg',
              text: 'Yunus',
              subtext: '10',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/05/87/09/12/240_F_587091230_4K2V0Yv1Zf5X4eOYKqm0l1eXXZYEEKPJ.jpg',
              text: 'Hud',
              subtext: '11',
              baskych: () {},
            ),
            ButtonContainers(
              image:
                  'https://t3.ftcdn.net/jpg/04/68/90/14/240_F_468901434_0WCzffYydaFEhGqzgLjf5Vdog8YyDH1b.jpg',
              text: 'Yusuf',
              subtext: '12',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'ar-Ra`d',
              subtext: '13',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'Ibrahim',
              subtext: '14',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'al-Hijr',
              subtext: '15',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'an-Nahl',
              subtext: '16',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'al-Isra`',
              subtext: '17',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'al-Kahf',
              subtext: '18',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'Maryam',
              subtext: '19',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'Ta Ha',
              subtext: '20',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'al-Anbiya`',
              subtext: '21',
              baskych: () {},
            ),
            ButtonContainers(
              image: '',
              text: 'al-Hajj',
              subtext: '22',
              baskych: () {},
            ),
          ],
        ),
      ),
    );
  }
}
