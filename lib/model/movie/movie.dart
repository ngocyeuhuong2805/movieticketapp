import 'caster.dart';

class Movie {
  final String id;
  final String name;
  final String image;
  final String background;
  final List<Caster> casters;
  Movie({required this.id, required this.name, required this.image, required this.casters,required this.background,});
}

