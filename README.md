# Dart: Handling Non-Existent JSON Keys

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that does not exist.  The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a corrected version.

The error occurs when the code assumes a specific key exists in the JSON response, but it's missing.  This can lead to runtime exceptions. The solution involves checking for the key's existence before accessing it, using techniques such as `containsKey()` or optional chaining.