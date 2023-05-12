import 'package:go_router/go_router.dart';

import '../../screens/new_task.dart';
import '../../screens/tasks.dart';
import 'constants.dart';

final GoRouter routerCfg = GoRouter(
  routes: [
    GoRoute(
      path: ConstCfg.routeHome,
      builder: (context, state) => const TasksScreen(),
      routes: [
        GoRoute(
          path: ConstCfg.routeNew,
          builder: (context, state) => const NewTaskScreen(),
        ),
      ]
    )
  ]
);