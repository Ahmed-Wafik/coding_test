import 'package:coding_test/presentation/bloc/series/series_cubit.dart';
import 'package:coding_test/presentation/pages/series/widgets/series_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/app_error_widget.dart';
import '../../widgets/app_loading_widget.dart';

class SeriesView extends StatefulWidget {
  const SeriesView({Key? key}) : super(key: key);

  @override
  State<SeriesView> createState() => _SeriesViewState();
}

class _SeriesViewState extends State<SeriesView> {
  @override
  void initState() {
    super.initState();
    context.read<SeriesCubit>().getSeriesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SeriesCubit, SeriesState>(
        listener: (_, state) {},
        builder: (context, state) {
          if (state is SeriesLoading) {
            return const AppLoadingWidget();
          } else if (state is SeriesData) {
            return state.seriesModel?.fold((l) =>  AppErrorWidget(
              appError: l,
            ),
                    (r) => SeriesItemsWidget(seriesModel: r)) ??
                Container();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
