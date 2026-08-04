/// Percent-completed and never-started aggregate for the statistics screen.
class CompletionStats {
  const CompletionStats({
    required this.percentCompleted,
    required this.neverStartedCount,
  });

  final double percentCompleted;
  final int neverStartedCount;
}

/// Singleplayer vs multiplayer game count split.
class SingleplayerMultiplayerSplit {
  const SingleplayerMultiplayerSplit({
    required this.singleplayerCount,
    required this.multiplayerCount,
  });

  final int singleplayerCount;
  final int multiplayerCount;
}
