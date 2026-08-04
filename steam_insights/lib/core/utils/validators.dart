/// Input validation for the "add profile" flow (RF01): accepts either a
/// 17-digit SteamID64 or a non-empty vanity URL/name.
class Validators {
  Validators._();

  static final RegExp _steamId64Pattern = RegExp(r'^\d{17}$');

  static bool isSteamId64(String input) => _steamId64Pattern.hasMatch(input);

  /// Returns an error message, or null if [input] looks like a usable
  /// SteamID64 or vanity URL/name.
  static String? validateSteamIdOrVanityUrl(String? input) {
    final value = input?.trim() ?? '';
    if (value.isEmpty) return 'Enter a SteamID or vanity URL';
    return null;
  }
}
