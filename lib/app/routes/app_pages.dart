import 'package:get/get.dart';

import '../modules/admin_editbarang/bindings/admin_editbarang_binding.dart';
import '../modules/admin_editbarang/views/admin_editbarang_view.dart';
import '../modules/admin_home/bindings/admin_home_binding.dart';
import '../modules/admin_home/views/admin_home_view.dart';
import '../modules/admin_kelolabarang/bindings/admin_kelolabarang_binding.dart';
import '../modules/admin_kelolabarang/views/admin_kelolabarang_view.dart';
import '../modules/admin_kelolapesanan/bindings/admin_kelolapesanan_binding.dart';
import '../modules/admin_kelolapesanan/views/admin_kelolapesanan_view.dart';
import '../modules/admin_login/bindings/admin_login_binding.dart';
import '../modules/admin_login/views/admin_login_view.dart';
import '../modules/admin_tambahbarang/bindings/admin_tambahbarang_binding.dart';
import '../modules/admin_tambahbarang/views/admin_tambahbarang_view.dart';
import '../modules/daftar/bindings/daftar_binding.dart';
import '../modules/daftar/views/daftar_view.dart';
import '../modules/detail_depot/bindings/detail_depot_binding.dart';
import '../modules/detail_depot/views/detail_depot_view.dart';
import '../modules/edit_profil/bindings/edit_profil_binding.dart';
import '../modules/edit_profil/views/edit_profil_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_depot/bindings/list_depot_binding.dart';
import '../modules/list_depot/views/list_depot_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/pemesanan/bindings/pemesanan_binding.dart';
import '../modules/pemesanan/views/pemesanan_view.dart';
import '../modules/pesanan/bindings/pesanan_binding.dart';
import '../modules/pesanan/views/pesanan_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => DaftarView(),
      binding: DaftarBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.LIST_DEPOT,
      page: () => ListDepotView(),
      binding: ListDepotBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_DEPOT,
      page: () => DetailDepotView(),
      binding: DetailDepotBinding(),
    ),
    GetPage(
      name: _Paths.PEMESANAN,
      page: () => PemesananView(),
      binding: PemesananBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFIL,
      page: () => EditProfilView(),
      binding: EditProfilBinding(),
    ),
    GetPage(
      name: _Paths.PESANAN,
      page: () => PesananView(),
      binding: PesananBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_LOGIN,
      page: () => AdminLoginView(),
      binding: AdminLoginBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_HOME,
      page: () => AdminHomeView(),
      binding: AdminHomeBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_KELOLABARANG,
      page: () => AdminKelolabarangView(),
      binding: AdminKelolabarangBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_KELOLAPESANAN,
      page: () => AdminKelolapesananView(),
      binding: AdminKelolapesananBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_TAMBAHBARANG,
      page: () => AdminTambahbarangView(),
      binding: AdminTambahbarangBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_EDITBARANG,
      page: () => AdminEditbarangView(),
      binding: AdminEditbarangBinding(),
    ),
  ];
}
