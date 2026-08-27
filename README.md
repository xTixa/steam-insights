# Steam Insights

Steam Insights is a mobile-first Flutter app that turns a public Steam profile into detailed statistics, charts, and analytics that complement the official Steam client.

## Features

- **Multi-profile** — save several Steam profiles (SteamID64 or vanity URL), switch between them, mark a favorite.
- **Dashboard** — at-a-glance account summary: total games, hours played, average hours/game, most/least played, never-started count, completion %, achievements.
- **Library** — full owned-games list with search and filters, offline-first (cached locally, refreshes in the background).
- **Statistics** — six chart sections: top 10 most played, hours by genre, library growth over time, completion meter, recent weeks' playtime, singleplayer/multiplayer split.
- **Game detail** — store metadata, screenshots, achievements for a single game.
- **Wishlist** — track wishlisted games and price history.
- **Comparison** — compare account summaries between two saved profiles.
- **Settings** — theme, cache management.

## Tech stack

- **Flutter** (Dart) — Android, Windows and Web targets configured.
- **Riverpod** (`flutter_riverpod` + `riverpod_generator`) for state management, with `ConsumerWidget`/code-generated providers throughout.
- **go_router** with `StatefulShellRoute.indexedStack` for the 5-tab bottom navigation, nested routes for game detail/search/comparison, and a redirect guard that sends users to profile selection when no profile is active.
- **Isar** as the local database (offline-first caching of library/profile/wishlist data).
- **Dio** for HTTP, talking to two Steam surfaces:
  - the **Steam Web API** (owned games, player summary, achievements — requires an API key)
  - the **Steam Store API** (app details, store search — no key required)
- **fl_chart** for the statistics charts.

## Architecture

Each feature under `lib/features/<name>` follows a clean-architecture split:

```
data/           DTOs, remote/local datasources, repository implementations
domain/         entities, repository interfaces, use cases
presentation/   Riverpod providers, screens, widgets
```

Cross-cutting concerns (theme, router, Isar setup, Dio client, shared widgets) live in `lib/core`.

## Getting started

```bash
flutter pub get
```

The Steam Web API endpoints (owned games, player summary, achievements) require an API key. Get one at https://steamcommunity.com/dev/apikey, then run with:

```bash
flutter run --dart-define=STEAM_API_KEY=your_key_here
```

Without a key, the app still runs and the Store API features (search, app details) work; profile/library sync from the Web API will fail gracefully and fall back to whatever is already cached locally.

Tested targets: `flutter run -d windows`, `flutter run -d chrome`, `flutter run -d <android-device>`.

## Project status

Actively developed. Core flows (add profile → dashboard → library → statistics → wishlist → comparison) are implemented and have been manually verified end-to-end. Known gaps:

- Automated test coverage is minimal (one widget smoke test) — unit tests for use cases and repositories are the next priority.
- Wishlist price history has no data source yet (Steam doesn't expose a public price-history API); the field exists but is intentionally unimplemented.

---

EN

Steam Insights is a mobile app developed in Flutter that allows users to explore their Steam library through detailed statistics, graphical visualizations, and analytics features that complement the official platform.

The app will communicate with the Steam Web API to retrieve public information about the user's profile and present this data through a modern, intuitive interface optimized for mobile devices.

The main goal is to provide users with an in-depth view of their gaming habits, allowing them to discover patterns, compare information, and track the evolution of their library over time.


PT

O Steam Insights é uma aplicação móvel desenvolvida em Flutter que permite aos utilizadores explorar a sua biblioteca Steam através de estatísticas detalhadas, visualizações gráficas e funcionalidades de análise que complementam a plataforma oficial.

A aplicação deverá comunicar com a Steam Web API para obter informação pública sobre o perfil do utilizador e apresentar esses dados através de uma interface moderna, intuitiva e otimizada para dispositivos móveis.

O objetivo principal consiste em fornecer ao utilizador uma visão aprofundada dos seus hábitos de jogo, permitindo descobrir padrões, comparar informação e acompanhar a evolução da sua biblioteca ao longo do tempo.
