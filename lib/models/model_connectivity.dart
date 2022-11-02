import '../entities/entity_model.dart';

class ModelConnectivity implements EntityModel {
  const ModelConnectivity({
    this.internet = false,
    this.wifi = false,
    this.mobileserviceprovider = false,
  });

  final bool internet;
  final bool wifi;
  final bool mobileserviceprovider;

  ModelConnectivity copyWith({
    bool? internet,
    bool? wifi,
    bool? mobileserviceprovider,
  }) =>
      ModelConnectivity(
        internet: internet ?? this.internet,
        wifi: wifi ?? this.wifi,
        mobileserviceprovider:
            mobileserviceprovider ?? this.mobileserviceprovider,
      );

  factory ModelConnectivity.fromJson(Map<String, dynamic> json) =>
      ModelConnectivity(
        internet: json["internet"] ?? false,
        wifi: json["wifi"] ?? false,
        mobileserviceprovider: json["mobileserviceprovider"] ?? false,
      );

  @override
  Map<String, dynamic> toJson() => {
        "internet": internet,
        "wifi": wifi,
        "mobileserviceprovider": mobileserviceprovider,
      };
}
