import 'package:bewell/file_exporter.dart';
part 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (model) => model.init(),
        onDispose: (viewModel) => viewModel.disposeView(),
        disposeViewModel: true,
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Hello, STACKED!',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          MaterialButton(
                            color: Colors.black,
                            onPressed: () {},
                            child: const Text(
                              "Data",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
