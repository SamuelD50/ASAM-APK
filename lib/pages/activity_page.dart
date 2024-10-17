import 'package:flutter/material.dart';
import 'package:asam_apk/model/activity_model.dart';
import 'package:asam_apk/components/activity_card.dart';
import 'package:asam_apk/components/activity_map.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends State<ActivityPage> {
  List<ActivityModel> activities = [];

  @override
  void initState() {
    super.initState();
    _loadActivities();
  }

  void _loadActivities() {
    activities = [
      ActivityModel(
        discipline: 'Chant',
        schedules: [
          Schedule(day: 'Mercredi', startHour: '14H', endHour: '18h'),
        ],
        pricings: [
          Pricing(profile: 'Adulte', pricing: '65'),
        ],
        place: Place(title: 'Permanence ASAM', streetAddress: '60 avenue de Cessart', postalCode: '50100', city: 'CHERBOURG-EN-COTENTIN'),
        information: 'Chansons françaises et internationales',
        /* imageUrl: 'https://asamcherbourg.fr/media/02d5f1cbce69bb3d88ddb9bd100f168d.jpg' */
      ),
      ActivityModel(
        discipline: 'Danse country',
        schedules: [
          Schedule(day: 'Mercredi', startHour: '19H', endHour: '20H'),
          Schedule(day: 'Mercredi', startHour: '20H', endHour: '21H'),
          Schedule(day: 'Mercredi', startHour: '21H', endHour: '22H'),
        ],
        pricings: [
          Pricing(profile: 'Seul', pricing: '78'),
          Pricing(profile: 'Couple', pricing: '134'),
        ],
        place: Place(title: 'Porte des 3 Hangars', streetAddress: 'La Saline', postalCode: '50120', city: 'CHERBOURG-EN-COTENTIN'),
        information: 'Débutants, novices et confirmés',
        /* imageUrl: 'https://asamcherbourg.fr/media/02d5f1cbce69bb3d88ddb9bd100f168d.jpg' */
      ),
    ];
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: MapCard(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return ActivityCard(activity: activities[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}



 /*  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                controller: controller,
                padding: const WidgetStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
              );
            },
            suggestionsBuilder: (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(5, (int index) {
                final String item = 'Item $index';
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    controller.closeView(item);
                  },
                );
              });
            },
          ),

          const SizedBox(height: 10),

          ActivityCard(),
        
          const Card(
            child: ListTile(
              leading: Icon(Icons.notifications_sharp),
              title: Text('Notification 1'),
              subtitle: Text('This is a notification'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.notifications_sharp),
              title: Text('Notification 2'),
              subtitle: Text('This is a notification'),
            ),
          ),
        ],
      ),
    );
  }
}
 */