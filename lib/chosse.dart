import 'package:ex3/wouldtime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home.dart';

class Chosse extends StatefulWidget {
  const Chosse({super.key});

  @override
  State<Chosse> createState() => _ChosseState();
}

class _ChosseState extends State<Chosse> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'UK_London.png', url: 'Europe/London'),
    WorldTime(
        location: 'Berlin', flag: 'Germany_Berlin.png', url: 'Europe/Berlin'),
    WorldTime(
        location: 'Greece', flag: 'Greece_Athens.jpg', url: 'Europe/Athens'),
    WorldTime(location: 'Andorra', flag: 'Andorra.png', url: 'Europe/Andorra'),
    WorldTime(
        location: 'Russia',
        flag: 'Astrakhan_Russia.png',
        url: 'Europe/Astrakhan'),
    WorldTime(
        location: 'Belgique',
        flag: 'Brussels_Belgique.jpg',
        url: 'Europe/Brussels'),
    WorldTime(
        location: 'Romania',
        flag: 'Bucharest_Romania.png',
        url: 'Europe/Bucharest'),
    WorldTime(
        location: 'Hungary',
        flag: 'Budapest_Hungary.png',
        url: 'Europe/Budapest'),
    WorldTime(
        location: 'Moldavie',
        flag: 'Chisinau_Moldavie.png',
        url: 'Europe/Chisinau'),
    WorldTime(
        location: 'Danemark',
        flag: 'Copenhagen_Danemark.jpg',
        url: 'Europe/Copenhagen'),
    WorldTime(
        location: 'Tchequie', flag: 'Czech_Prague.png', url: 'Europe/Prague'),
    WorldTime(
        location: 'Irlande', flag: 'Dublin_dIrlande.jpg', url: 'Europe/Dublin'),
    WorldTime(
        location: 'France', flag: 'France_paris.png', url: 'Europe/Paris'),
    WorldTime(
        location: 'Finland',
        flag: 'Helsinki_Finland.png',
        url: 'Europe/Helsinki'),
    WorldTime(
        location: 'Ukraine', flag: 'Kiev-ukraine.jpg', url: 'Europe/Kiev'),
    WorldTime(
        location: 'Portugal',
        flag: 'Lisbon-Portogallo.png',
        url: 'Europe/Lisbon'),
    WorldTime(
        location: 'Luxembourg',
        flag: 'Luxembourg.jpg',
        url: 'Europe/Luxembourg'),
    WorldTime(
        location: 'Espagne', flag: 'Madrid_espagne.jpg', url: 'Europe/Madrid'),
    WorldTime(location: 'Malta', flag: 'Malta.png', url: 'Europe/Malta'),
    WorldTime(
        location: 'Bielorussie',
        flag: 'Minsk_Belarus.png',
        url: 'Europe/Minsk'),
    WorldTime(location: 'Monaco', flag: 'Monaco.png', url: 'Europe/Monaco'),
    WorldTime(
        location: 'Netherlands',
        flag: 'Netherlands-amesterdam.png',
        url: 'Europe/Amsterdam'),
    WorldTime(location: 'Norway', flag: 'Norway_oslo.png', url: 'Europe/Oslo'),
    WorldTime(location: 'Italie', flag: 'Rome_lItalie.jpg', url: 'Europe/Rome'),
    WorldTime(
        location: 'Russie', flag: 'Russia_moscow.jpg', url: 'Europe/Moscow'),
    WorldTime(
        location: 'Serbie',
        flag: 'Serbia_Belgarde.png',
        url: 'Europe/Belgrade'),
    WorldTime(
        location: 'Bulgarie', flag: 'Sofia_Bulgaria.png', url: 'Europe/Sofia'),
    WorldTime(
        location: 'Suede',
        flag: 'Stockholm-sweden.jpg',
        url: 'Europe/Stockholm'),
    WorldTime(
        location: 'Estonie',
        flag: 'Tallinn_Estonie.png',
        url: 'Europe/Tallinn'),
    WorldTime(
        location: 'Albanie', flag: 'tirana_albania.jpg', url: 'Europe/Tirane'),
    WorldTime(location: 'Turquie', flag: 'Turkk.png', url: 'Europe/Istanbul'),
    WorldTime(
        location: 'Austria', flag: 'Vianna_Austria.png', url: 'Europe/Vienna'),
    WorldTime(
        location: 'Lituanie',
        flag: 'Vilnius_Lithuania.png',
        url: 'Europe/Vilnius'),
    WorldTime(
        location: 'Poland', flag: 'Warsaw_Poland.jpg', url: 'Europe/Warsaw'),
    WorldTime(
        location: 'Switzerland ',
        flag: 'Zurich_Switzerland.png',
        url: 'Europe/Zurich'),
    WorldTime(location: 'Namibia', flag: 'namibia.png', url: 'Africa/Windhoek'),
    WorldTime(location: 'Tunisie', flag: 'Tunisie.jpg', url: 'Africa/Tunis'),
    WorldTime(
        location: 'Libya', flag: 'tripoli_Libya.png', url: 'Africa/Tripoli'),
    WorldTime(location: 'Tchad', flag: 'Chad_ndja.png', url: 'Africa/Ndjamena'),
    WorldTime(
        location: 'Kenya', flag: 'mairobi_Kenya.jpg', url: 'Africa/Nairobi'),
    WorldTime(
        location: 'Liberia',
        flag: 'monrovia-liberiaa.png',
        url: 'Africa/Monrovia'),
    WorldTime(
        location: 'Nigeria', flag: 'logos_Nigeria.jpg', url: 'Africa/Lagos'),
    WorldTime(
        location: 'South Sudan',
        flag: 'juba_South_Sudan.png',
        url: 'Africa/Juba'),
    WorldTime(location: 'Maroc', flag: 'Maroc.png', url: 'Africa/Casablanca'),
    WorldTime(
        location: 'Egypte', flag: 'Cairo_Égypte.jpg', url: 'Africa/Cairo'),
    WorldTime(
        location: 'Guinee Bissau',
        flag: 'Guinea-Bissau.png',
        url: 'Africa/Bissau'),
    WorldTime(location: 'Algeria', flag: 'Algeria.png', url: 'Africa/Algiers'),
    WorldTime(location: 'Ghana', flag: 'accra_Ghana.png', url: 'Africa/Accra'),
  ];
  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(
                    locations[index].location,
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('image/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
