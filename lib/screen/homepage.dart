import 'package:parse_json_flutter/providers/export_provider.dart';
import 'package:parse_json_flutter/providers/userdata_provider.dart';
import 'package:parse_json_flutter/screen/detail_page.dart';

import 'export_screens.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1.StateNotifier to Fecth data'),
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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  currentusers: data[index],
                                )));
                      },
                      child: ListTile(
                        title: Text(data[index].first_name.toString() +
                            "" +
                            data[index].last_name),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data[index].avatar),
                        ),
                        // subtitle: Text(data[index].last_name.toString()),
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
