import 'package:get/state_manager.dart';

class PickupController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                  Variables                                 */
  /* -------------------------------------------------------------------------- */

  int selectedTab = 100;
  bool switchController = false;
  bool isSwitched = false;

  /* -------------------------------------------------------------------------- */
  /*                                    Lists                                   */
  /* -------------------------------------------------------------------------- */

  List<String> times = [
    "7am - 9pm",
    "10am - 12pm",
    "1pm - 2pm",
    "4pm - 6pm",
    "8pm - 10pm",
  ];

  /* -------------------------------------------------------------------------- */
  /*                                  Functions                                 */
  /* -------------------------------------------------------------------------- */

void toggleSwitch(bool value) {
    if (isSwitched == false) {
      isSwitched = true;
    } else {
      isSwitched = false;
    }
    update();
  }
  

}
