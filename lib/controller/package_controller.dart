import 'package:evalutaion_task/model/package_model.dart';
import 'package:get/get.dart';

class PackageController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                  Variables                                 */
  /* -------------------------------------------------------------------------- */

  Package package = new Package();

  /* -------------------------------------------------------------------------- */
  /*                                    Lists                                   */
  /* -------------------------------------------------------------------------- */

  List<Package> packages = [
    Package(
      heading: "5 T-Shirts Dry and Cleaning",
      price: "60",
      imageName: "assets/images/demo_image.png",
    ),
    Package(
      heading: "Shirt jeans slip Dry and cleaning",
      price: "40",
      imageName: "assets/images/demo_image.png",
    ),
    Package(
      heading: "5 Jeans Dry and Cleaning",
      price: "80",
      imageName: "assets/images/demo_image.png",
    ),
    Package(
      heading: "2 Uniform Dry and Cleaning",
      price: "50",
      imageName: "assets/images/demo_image.png",
    ),
    Package(
      heading: "2 Linen Dry and Cleaning",
      price: "80",
      imageName: "assets/images/demo_image.png",
    ),
  ];

  /* -------------------------------------------------------------------------- */
  /*                                  Functions                                 */
  /* -------------------------------------------------------------------------- */

}
