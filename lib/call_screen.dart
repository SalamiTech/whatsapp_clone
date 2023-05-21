import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models%20/call_model.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return Column(
          children: [
            const Divider(
              thickness: 1.2,
              height: 5,
            ),
            InkWell(
              onTap: () {
                // initiate the call
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ZegoUIKitPrebuiltCall(
                      appID:
                          439880837, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
                      appSign:
                          "4de68aa243003e6f362b7ba4d2a062595b4eb9daed07e0d700f9c790746e4739", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
                      userID: call.id,
                      userName: call.name,
                      callID: call.id,
                      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
                      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
                        ..onOnlySelfInRoom =
                            (context) => Navigator.of(context).pop(),
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(call.imgurl),
                ),
                title: Text(
                  call.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      call.status,
                      Text(
                        call.time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    call.type.icon,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
