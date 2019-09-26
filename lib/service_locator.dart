import 'package:get_it/get_it.dart';

import 'package:natrium_wallet_flutter/model/db/appdb.dart';
import 'package:natrium_wallet_flutter/model/vault.dart';
import 'package:natrium_wallet_flutter/network/account_service.dart';
import 'package:natrium_wallet_flutter/util/legacyutil.dart';
import 'package:natrium_wallet_flutter/util/hapticutil.dart';
// import 'package:natrium_wallet_flutter/util/biometrics.dart'; //! disable local_auth
import 'package:natrium_wallet_flutter/util/sharedprefsutil.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<AccountService>(() => AccountService());
  sl.registerLazySingleton<DBHelper>(() => DBHelper());
  sl.registerLazySingleton<LegacyMigration>(() => LegacyMigration());
  sl.registerLazySingleton<HapticUtil>(() => HapticUtil());
  // sl.registerLazySingleton<BiometricUtil>(() => BiometricUtil()); //! disable local_auth
  sl.registerLazySingleton<Vault>(() => Vault());
  sl.registerLazySingleton<SharedPrefsUtil>(() => SharedPrefsUtil());
}
