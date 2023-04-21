import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/auth/pages/create_newpassword_page.dart';
import 'package:money_rise/auth/pages/forget_password_page.dart';
import 'package:money_rise/auth/pages/otp_page_page.dart';
import 'package:money_rise/auth/pages/splash_page.dart';
import 'package:money_rise/fragment/message_fragment.dart';
import 'package:money_rise/fragment/profile/pin_management_page.dart';
import 'package:money_rise/fragment/profile/view_account_page.dart';
import 'package:money_rise/providers/scaffold_with_bottom_navigationbar.dart';
import 'package:money_rise/ui/ads_page.dart';
import 'package:money_rise/ui/bus_ticket_page.dart';
import 'package:money_rise/ui/service_confirm_page.dart';
import 'package:money_rise/ui/wallet_exchange_page.dart';

import '../fragment/home_fragment.dart';
import '../fragment/profile/my_profile_fragment.dart';
import '../ui/gift_card_page.dart';
import '../ui/service_page.dart';
import '../ui/top_up_detail_page.dart';
import '../ui/top_up_main_page.dart';
import '../ui/wallet_transfers_page.dart';

const forgetPassword = 'forget_password';
const otp = 'otp';
const createNewPassword = 'create_newpassword';

const home = 'home';
const message = 'message';
const myProfile = 'my_profile';

const viewAccount = 'view_account';
const pinManagement = 'pin_management';

const splash = 'splash';
const service = 'service';
const serviceConfirm = 'service_confirm';

const topUpMain = 'top_up_main';
const topUpDetail = 'top_up_detail';

const walletTransfers = 'wallet_transfers';
const walletExchange = 'wallet_exchange';

const ads = 'ads';
const busTicket = 'bus_ticket';

const giftCard = 'gift_card';

final routerProvider = Provider<GoRouter>((ref) {
  // var token = ref.watch(tokenProvider);

  // private navigators
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final shellNavigatorKey = GlobalKey<NavigatorState>();

  return GoRouter(
    initialLocation: '/home',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (context, state, child) {
          // a widget used to build the UI shell around the child widget
          return ScaffoldWithBottomNavBar(child: child);
        },
        routes: [
          GoRoute(
            parentNavigatorKey: shellNavigatorKey,
            name: home,
            path: '/home',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomeFragment()),
          ),
          GoRoute(
            name: message,
            path: '/message',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: MessageFragment(),
            ),
          ),
          GoRoute(
            parentNavigatorKey: shellNavigatorKey,
            name: myProfile,
            path: '/my_profile',
            // redirect: (context, state) {
            //   if (token == null) {
            //     return '/login';
            //   }
            //   return null;
            // },
            pageBuilder: (context, state) => NoTransitionPage(
              child: MyProfileFragment(),
            ),
          ),
        ],
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: splash,
        path: "/splash",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SplashPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: service,
        path: "/service",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ServicePage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: serviceConfirm,
        path: "/service_confirm",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ServiceConfirmPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: topUpMain,
        path: "/top_up_main",
        pageBuilder: (context, state) => NoTransitionPage(
          child: TopUpMainPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: topUpDetail,
        path: "/top_up_detail",
        pageBuilder: (context, state) => NoTransitionPage(
          child: TopUpDetailPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: walletTransfers,
        path: "/wallet_transfers",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: WalletTransfersPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: walletExchange,
        path: "/wallet_exchange",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: WalletExchangePage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: ads,
        path: "/ads",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ADsPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: busTicket,
        path: "/bus_ticket",
        pageBuilder: (context, state) => const NoTransitionPage(
          child: BusTicketPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: giftCard,
        path: "/gift",
        pageBuilder: (context, state) => NoTransitionPage(
          child: GiftCardPage(),
        ),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: forgetPassword,
        path: "/forget_password",
        pageBuilder: (context, state) => NoTransitionPage(
          child: ForgetPasswordPage(),
        ),
      ),
       GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: otp,
        path: "/otp",
        pageBuilder: (context, state) => NoTransitionPage(
          child: OtpPage(),
        ),
      ),
       GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: createNewPassword,
        path: "/create_newpassword",
        pageBuilder: (context, state) => NoTransitionPage(
          child: CreateNewPasswordPage(),
        ),
      ),

       GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: viewAccount,
        path: "/view_account",
        pageBuilder: (context, state) => NoTransitionPage(
          child: ViewAccountPage(),
        ),
      ),
        GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        name: pinManagement,
        path: "/pin_management",
        pageBuilder: (context, state) => NoTransitionPage(
          child: PinManagementPage(),
        ),
      ),

      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: profileSetting,
      //   path: "/profile_setting",
      //   redirect: (context, state) {
      //     if (token == null) {
      //       return '/sign_in_sign_up';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: ProfileSettingPage(),

      //     //  ProductDetailsScreen(
      //     //   productId: int.parse(state.params['productId'] as String),
      //     // ),
      //   ),
      // ),

      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: OTP,
      //   path: "/otp",
      //   pageBuilder: (context, state) =>  NoTransitionPage(
      //     child: OtpScreen(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: CART,
      //   path: "/cart",
      //   redirect: (context, state) {
      //     if (token == null) {
      //       return '/login';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) =>  NoTransitionPage(
      //     child: CartScreenNew(),
      //   ),
      // ),
      // GoRoute(
      //   parentNavigatorKey: rootNavigatorKey,
      //   name: CHECKOUT,
      //   path: "/checkout",
      //   redirect: (context, state) {
      //     if (token == null) {
      //       return '/login';
      //     }
      //     return null;
      //   },
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: CheckoutScreen(),
      //   ),
      // ),
    ],
  );
});
