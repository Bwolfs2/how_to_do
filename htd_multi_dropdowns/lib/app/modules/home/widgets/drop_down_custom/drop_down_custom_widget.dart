import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class DropDownCustomWidget extends StatefulWidget {
  final Future<List<String>> Function() data;

  const DropDownCustomWidget({Key key, @required this.data}) : super(key: key);

  @override
  _DropDownCustomWidgetState createState() => _DropDownCustomWidgetState();
}

class _DropDownCustomWidgetState extends State<DropDownCustomWidget> {
  Widget childItem;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
        future: widget.data(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: LinearProgressIndicator(),
            );
          }

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: SearchableDropdown.single(
                  items: snapshot.data
                      .map((e) => DropdownMenuItem(child: Text(e)))
                      .toList(),
                  hint: "No Idea",
                  onClear: () {
                    setState(() {
                      childItem = null;
                    });
                  },
                  value: "1",
                  onChanged: (value) {
                    setState(() {
                      childItem = DropDownCustomWidget(
                        data: () async {
                          return List.generate(
                              20, (index) => "$value - $index");
                        },
                      );
                    });
                  },
                  isExpanded: true,
                ),
              ),
              if (childItem != null) childItem
            ],
          );
        });
  }
}
