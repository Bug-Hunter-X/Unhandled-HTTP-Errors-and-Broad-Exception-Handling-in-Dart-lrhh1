```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error here
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // This catch block will catch all exceptions, including those thrown by the function itself
    print('Error: $e');
    rethrow; // Re-throw to let a higher-level function handle this error if necessary
  }
}
```