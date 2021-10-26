import 'package:parse_json_flutter/models/user_model.dart';
import 'package:parse_json_flutter/providers/export_provider.dart';
import 'package:parse_json_flutter/screen/export_screens.dart';

class DetailPage extends StatefulWidget {
  final UsersModel currentusers;
  const DetailPage({Key? key, required this.currentusers}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      UsersModel _currentUser = widget.currentusers;

      return Scaffold(
        appBar: AppBar(title: Text('_currentUser.first_name')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 80,
                backgroundImage: NetworkImage(_currentUser.avatar),
              ),
              Text(_currentUser.email)
            ],
          ),
        ),
      );
    });
  }
}
