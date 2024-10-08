class ServerConnectionException implements Exception {
  final String _msg;
  String get msg => _msg;
  
  const ServerConnectionException(this._msg);
  String toString() => _msg;
}