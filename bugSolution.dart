```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      // Solution 1: Using containsKey()
      if (jsonResponse.containsKey('nonExistentKey')) {
        final value = jsonResponse['nonExistentKey'];
        print(value);
      } else {
        print('Key "nonExistentKey" not found.');
      }

      // Solution 2: Using ?? operator (Null-aware operator)
      final value2 = jsonResponse['someKey'] ?? 'Default Value';
      print(value2); // Prints default value if 'someKey' is not found
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```