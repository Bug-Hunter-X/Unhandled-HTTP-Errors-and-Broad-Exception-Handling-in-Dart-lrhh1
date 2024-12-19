```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
    } else {
      // Handle specific HTTP error codes
      throw HttpException('HTTP error ${response.statusCode}', uri: Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    //Handle network errors
    print('Network error: $e');
    //Inform user of network error
  } on HttpException catch (e) {
    //Handle HTTP errors
    print('HTTP error: ${e.message} at ${e.uri}');
    //Inform user of HTTP error
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON parsing error: $e');
    // Inform the user of the error
  } catch (e) {
    // Handle other unexpected errors
    print('An unexpected error occurred: $e');
    //Inform user of the error
  }
}
```