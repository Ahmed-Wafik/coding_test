import 'package:coding_test/data/model/series_model.dart';
import 'package:flutter/material.dart';

class SeriesItemsWidget extends StatelessWidget {
  final List<SeriesItemModel> seriesModel;

  const SeriesItemsWidget({Key? key, required this.seriesModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: seriesModel.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) {
        final item = seriesModel[index];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  constraints: const BoxConstraints.expand(height: 120),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: Text(item.title ?? '--',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(item.instructor?.name ?? '--',
                    style: Theme.of(context).textTheme.subtitle2),
              ),
              const SizedBox(height: 10)
            ],
          ),
        );
      },
      // crossAxisCount: 2,
    );
  }
}
