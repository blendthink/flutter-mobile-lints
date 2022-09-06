## 3.0.0

- Bumped the minimum required Dart SDK version to `2.18.0`.
- Removed `exclude:` specification
  - Use `ignore_for_file` with build.yaml instead.
- Removed `invalid_annotation_target: ignore`
  - If you are using freezed, add it to analysis_options.yaml.
- Added Lints.
  - `unnecessary_to_list_in_spreads`
  - `unnecessary_null_aware_operator_on_extension_on_nullable`
- Removed Lints.
  - `invariant_booleans`

### Reference

- https://github.com/dart-lang/sdk/blob/main/CHANGELOG.md#2180
- https://pub.dev/packages/source_gen#configuring-combining_builder-ignore_for_file
- https://github.com/rrousselGit/freezed/issues/488
- https://github.com/dart-lang/linter/releases/tag/1.23.0
- https://github.com/dart-lang/linter/releases/tag/1.24.0
- https://github.com/dart-lang/linter/releases/tag/1.25.0
- https://dart-lang.github.io/linter/lints/unnecessary_to_list_in_spreads.html
- https://dart-lang.github.io/linter/lints/unnecessary_null_aware_operator_on_extension_on_nullable.html
- https://dart-lang.github.io/linter/lints/invariant_booleans.html

## 2.0.0

- Bumped the minimum required Dart SDK version to `2.17.5`.
- Removed lints.
  - `always_put_required_named_parameters_first`

## 1.0.2

- Described the reason for `invalid_annotation_target: ignore`

## 1.0.1

- Removed `implicit-dynamic: false` from `strong-mode`. 

## 1.0.0

- Bumped the minimum required Dart SDK version to `2.17`.
- Updated `package:linter` dependency to version `1.22.0`, which added new lints.
  - `use_colored_box`
  - `use_enums`
  - `use_super_parameters`
- Updated `package:flutter_lints` dependency to version `2.0.1`, which removed lints that are no longer needed.
  - `sort_child_properties_last`
  - `use_build_context_synchronously`
  - `depend_on_referenced_packages`
  - `library_private_types_in_public_api`
  - `no_leading_underscores_for_library_prefixes`
  - `no_leading_underscores_for_local_identifiers`
  - `null_check_on_nullable_type_parameter`
  - `prefer_interpolation_to_compose_strings`
  - `unnecessary_constructor_name`
  - `unnecessary_late`
  - `unnecessary_null_aware_assignments`
  - `unnecessary_nullable_for_final_variable_declarations`

### Reference

- https://github.com/dart-lang/sdk/blob/main/CHANGELOG.md#2170---2022-05-11
- https://github.com/dart-lang/linter/releases/tag/1.22.0
- https://github.com/flutter/packages/blob/main/packages/flutter_lints/CHANGELOG.md#201

## 0.0.4

- Removed lints.
  - `diagnostic_describe_all_properties`
  - `one_member_abstracts`

## 0.0.3

- Fixed "Using json_serializable v5 causes invalid_annotation_target warnings".

## 0.0.2

Improve PUB POINTS

- Improve "No example found".
- Improve "The package description is too short".

## 0.0.1

- Initial release 🎉
