import 'package:bloc_navigation/core/domain/entity/app_metadata.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum StorageKeys {
  metadata('metadata');

  final String key;
  const StorageKeys(this.key);
}

class StorageService {
  final Storage storage = HydratedBloc.storage;

  StorageService();

  AppMetadata? getAppMetadata() => storage.read(StorageKeys.metadata.key);

  void setAppMetadata(AppMetadata metadata) {
    final AppMetadata? appMetadata = getAppMetadata();
    if (appMetadata != null) {
      storage.write(StorageKeys.metadata.key, appMetadata.copyWith(metadata));
    } else {
      storage.write(StorageKeys.metadata.key, metadata);
    }
  }
}
