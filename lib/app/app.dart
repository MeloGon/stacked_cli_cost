import 'package:seal_gon_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:seal_gon_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:seal_gon_app/ui/views/home/home_view.dart';
import 'package:seal_gon_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CostCalculatorView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
