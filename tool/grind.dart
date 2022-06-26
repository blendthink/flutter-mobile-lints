import 'dart:io';

import 'package:grinder/grinder.dart';

import 'extension/task_args_ext.dart';

main(args) => grind(args);

@Task('Update dependency lints.')
updateDependencyLints() {
  final args = context.invocation.arguments;
  final pubCachePath = args.requireOption('pub-cache');
  final baseBranch = args.requireOption('base');
  final headBranch = args.requireOption('head');

  final diff = run(
    'git',
    arguments: [
      'diff',
      baseBranch,
      headBranch,
      '--',
      'pubspec.yaml',
    ],
  );

  final hasLintsUpdate = diff.contains(RegExp(r'\+\s+flutter_lints:'));
  if (!hasLintsUpdate) return;

  final packagesDir = Directory('$pubCachePath/hosted/pub.dartlang.org');
  packagesDir.listSync().forEach((e) {
    if (e is Directory) {
      final dirPath = e.path;
      if (dirPath.contains(RegExp(r'.+/flutter_lints-.+'))) {
        File('$dirPath/lib/flutter.yaml')
            .copySync('tool/lints/flutter_lints/flutter.yaml');
      }
      if (dirPath.contains(RegExp(r'.+/lints-.+'))) {
        File('$dirPath/lib/core.yaml').copySync('tool/lints/lints/core.yaml');
        File('$dirPath/lib/recommended.yaml')
            .copySync('tool/lints/lints/recommended.yaml');
      }
    }
  });
}
