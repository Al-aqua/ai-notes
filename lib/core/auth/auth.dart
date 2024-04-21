import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pocketbase/pocketbase.dart';

final pb = PocketBase(dotenv.env['pbUrl']!);

queryPocketBaseForUser(String email) async {
  final result =
      await pb.collection('users').getList(filter: 'email = "$email"');
  // Check if any records were returned
  if (result.items.isNotEmpty) {
    // Return the first record found
    return true;
  } else {
    // Return null if no user was found
    return false;
  }
}

signUp(String username, String email, String password,
    String passwordConfirm) async {
  final body = <String, dynamic>{
    "email": email,
    "emailVisibility": true,
    "password": password,
    "passwordConfirm": passwordConfirm,
    "name": username
  };

  try {
    final record = await pb.collection('users').create(body: body);
    return 'Record created successfully with ID: ${record.id}';
  } on Exception catch (e) {
    ClientException err = e as ClientException;
    if (err.response['data']['email']['code'] == 'validation_invalid_email') {
      return 'The email is invalid or already in use.';
    } else {
      return 'Something went wrong. Please try again.';
    }
  }
}

login(String identifier, String password) async {
  await pb.collection('users').authWithPassword(
        identifier,
        password,
      );
}

logout() {
  pb.authStore.clear();
}
