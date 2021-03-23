import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomSearch extends StatefulWidget {
  @override
  _CustomSearchState createState() => _CustomSearchState();
}
const TextStyle dropDownMenuItemStyle = TextStyle(
  color: Colors.black,
  fontSize: 16.0,
);

const TextStyle chooseClassTextStyle = TextStyle(
color: Colors.black54,
  fontSize: 13,
  letterSpacing: 1
);

class _CustomSearchState extends State<CustomSearch> {

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: TextField(
              keyboardType: TextInputType.text,
              inputFormatters: [LengthLimitingTextInputFormatter(100),],
              minLines: 1,
              scrollPadding: EdgeInsets.symmetric(horizontal: 10),
              //textCapitalization: TextCapitalization,
              textAlign: TextAlign.center,
              keyboardAppearance: Brightness.light,
              style: dropDownMenuItemStyle,
              cursorColor: Theme.of(context). primaryColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                border: InputBorder.none,

                suffixIcon: Material(
                  elevation: 2.0,
                  borderRadius: BorderRadius.all(Radius.circular(30),
                  ),
                  child: InkWell(
                    splashColor: Theme.of(context).secondaryHeaderColor,
                    radius: 2,
                    onTap: (){
                    },
                    child: isKeyboardOpen ?
                    AnimatedOpacity(
                      opacity: 1.0 ,
                      duration: Duration(milliseconds: 500),
                      child: IconButton(
                        onPressed: (){
                          FocusManager.instance.primaryFocus.unfocus();
                        },
                        icon: Icon
                          (
                          Icons.close,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    )
                        :
                    AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(milliseconds: 500),
                      child: Icon(
                        Icons.search,
                        color: Theme.of(context).secondaryHeaderColor,

                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
