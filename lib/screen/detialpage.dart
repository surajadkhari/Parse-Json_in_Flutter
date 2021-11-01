import 'package:parse_json_flutter/providers/export_provider.dart';
import 'package:parse_json_flutter/providers/userdata_provider.dart';
import 'package:parse_json_flutter/screen/export_screens.dart';

class DetailPage extends StatefulWidget {
  final int index;

  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      var datail = watch(userListProvider);

      return Scaffold(
        appBar: AppBar(
          title: Text(datail[widget.index].first_name +
              " " +
              datail[widget.index].last_name),
        ),
        body: Column(
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(datail[widget.index].avatar),
              ),
            ),
            Text(datail[widget.index].first_name +
                " " +
                datail[widget.index].last_name),
            Text(datail[widget.index].email),
          ],
        ),
      );
    });
  }
}
