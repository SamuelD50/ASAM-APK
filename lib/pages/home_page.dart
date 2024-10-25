import 'package:flutter/material.dart';
import 'categories_page.dart';
import 'age_selection_page.dart';
import 'day_selection_page.dart';
import 'time_selection_page.dart';
import 'sector_selection_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Je trouve mon activité',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          // Barre de recherche
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Je recherche ...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Critères de sélection
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildCriteriaTile(context, Icons.category, 'Par Catégorie', CategoriesPage()),
                _buildCriteriaTile(context, Icons.accessibility, 'Par Âge', AgeSelectionPage()),
                _buildCriteriaTile(context, Icons.calendar_today, 'Selon le Jour', DaySelectionPage()),
                _buildCriteriaTile(context, Icons.access_time, 'Selon l\'Horaire', TimeSelectionPage()),
                _buildCriteriaTile(context, Icons.business, 'Par Secteur', SectorSelectionPage()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                debugPrint("Bouton rechercher");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Rechercher'),
            ),
          ),
        ],
      ),
    );
  }

    // Widget pour créer une ligne de critère avec une icône encerclée
  Widget _buildCriteriaTile(BuildContext context, IconData icon, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0), // Ajout d'un padding vertical
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF5B59B4), // Couleur de fond de l'icône
              ),
              padding: EdgeInsets.all(12), // Padding pour agrandir le cercle
              child: Icon(icon, color: Colors.white), // Icône à l'intérieur du cercle
            ),
            SizedBox(width: 40), // Espace entre l'icône et le texte
            Expanded(
              child: Text(
                label,
                style: TextStyle(color: Colors.black, fontSize: 18), // Style du texte
              ),
            ),
          ],
        ),
      ),
    );
  }
}