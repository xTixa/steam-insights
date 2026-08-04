/// Genre plus total playtime minutes, for the genre-distribution pie/bar chart.
class GenrePlaytimeSlice {
  const GenrePlaytimeSlice({required this.genre, required this.totalMinutes});

  final String genre;
  final int totalMinutes;
}
