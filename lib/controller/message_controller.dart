import 'package:evalutaion_task/model/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class MessageController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                  Variables                                 */
  /* -------------------------------------------------------------------------- */

  MessageModel messageModel = new MessageModel();
  TextEditingController sendMessageController = TextEditingController();

  /* -------------------------------------------------------------------------- */
  /*                                    Lists                                   */
  /* -------------------------------------------------------------------------- */

  List<MessageModel> messages = [
    MessageModel(
      message: "Hello",
      type: "Reciever",
    ),
    MessageModel(
      message: "Hi",
      type: "Sender",
    ),
    MessageModel(
      message: "How are you?",
      type: "Reciever",
    ),
    MessageModel(
      message: "I am fine what about you?",
      type: "Sender",
    ),
    MessageModel(
      message: "Never better.",
      type: "Reciever",
    ),
    MessageModel(
      message: "How is life treaating you these days?",
      type: "Reciever",
    ),
    MessageModel(
      message: "Its been busy",
      type: "Sender",
    ),
  ];

  /* -------------------------------------------------------------------------- */
  /*                                  Functions                                 */
  /* -------------------------------------------------------------------------- */

  chatTemp() {
    messages.add(
      MessageModel(
        message: sendMessageController.text,
        type: "Reciever",
      ),
    );
    messages.add(
      MessageModel(
        message: "What do you mean?",
        type: "Sender",
      ),
    );
    update();
    sendMessageController.text = "";
  }
}
