import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class TabsContent extends StatelessWidget {
  const TabsContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .13,
      child: TabBarView(children: [
        Padding(
          padding: EdgeInsets.only(right: 18, left: 20, bottom: 10),
          child: Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى',
            style: TextStyle(
                fontSize: 14, height: 1.5, color: textColor, wordSpacing: 1.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, left: 20, bottom: 10),
          child: Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى',
            style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: purpleColor,
                wordSpacing: 1.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 18, left: 20, bottom: 10),
          child: Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: lightBlueColor,
              wordSpacing: 1.5,
            ),
          ),
        ),
      ]),
    );
  }
}
