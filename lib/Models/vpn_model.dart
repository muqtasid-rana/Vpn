class VpnModel {
  VpnModel({
    required this.HostName,
    required this.IP,
    required this.Score,
    required this.Ping,
    required this.Speed,
    required this.CountryLong,
    required this.CountryShort,
    required this.NumVpnSessions,
    required this.OpenVPNConfigDataBase64,
  });
  late final String HostName;
  late final String IP;
  late final int Score;
  late final int Ping;
  late final int Speed;
  late final String CountryLong;
  late final String CountryShort;
  late final int NumVpnSessions;
  late final String OpenVPNConfigDataBase64;

  VpnModel.fromJson(Map<String, dynamic> json) {
    HostName = json['HostName'] ?? "";
    IP = json['IP'] ?? "";
    Score = json['Score'] ?? 0;
    Ping = json['Ping'] ?? 0;
    Speed = json['Speed'] ?? 0;
    CountryLong = json['CountryLong'] ?? "";
    CountryShort = json['CountryShort'] ?? "";
    NumVpnSessions = json['NumVpnSessions'] ?? 0;
    OpenVPNConfigDataBase64 = json['OpenVPN_ConfigData_Base64'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['HostName'] = HostName;
    _data['IP'] = IP;
    _data['Score'] = Score;
    _data['Ping'] = Ping;
    _data['Speed'] = Speed;
    _data['CountryLong'] = CountryLong;
    _data['CountryShort'] = CountryShort;
    _data['NumVpnSessions'] = NumVpnSessions;
    _data['OpenVPN_ConfigData_Base64'] = OpenVPNConfigDataBase64;
    return _data;
  }
}
