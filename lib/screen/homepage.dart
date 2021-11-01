import 'package:parse_json_flutter/providers/export_provider.dart';
import 'package:parse_json_flutter/providers/userdata_provider.dart';

import 'detialpage.dart';
import 'export_screens.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1.StateNotifier to Fecth data'),
        leading: Icon(Icons.refresh),
      ),
      body: Center(
        child: Consumer(builder: (context, watch, child) {
          var data = watch(userListProvider);
          if (data.isEmpty) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 20,
                ),
                Text('Please Wait 	⌛'),
              ],
            ));
          } else {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print('Hello');
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                                index: index,
                              )));
                    },
                    child: ListTile(
                      title: Text(data[index].first_name.toString()),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data[index].avatar),
                      ),
                    ),
                  );
                });
          }
        }),
      ),
    );
  }
}
