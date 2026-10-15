import 'package:virtual_staging_url_tools/virtual_staging_url_tools.dart';
void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://virtual-staging.app/') throw StateError('home');
  if (urls.tool_url('ai-staging') != 'https://virtual-staging.app/tools/ai-staging') throw StateError('extra');
}
