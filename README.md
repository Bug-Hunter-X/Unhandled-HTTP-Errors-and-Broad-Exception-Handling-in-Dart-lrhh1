# Unhandled HTTP Errors and Broad Exception Handling in Dart

This repository demonstrates a common error in Dart asynchronous programming:  unhandled HTTP errors and overly broad exception handling.  The `fetchData` function in `bug.dart` attempts to fetch data from an API. It has two major flaws:

1. **Insufficient HTTP Error Handling:** The code only checks for a 200 status code. Other status codes indicating errors (e.g., 404, 500) are not explicitly handled.
2. **Broad `catch` Block:** The `catch (e)` block catches *all* exceptions. This makes debugging difficult as it masks the root cause of failures. Rethrowing is not always the best solution for application-level handling.