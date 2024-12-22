# String Calculator TDD Kata

This project implements a simple `StringCalculator` following TDD (Test-Driven Development) principles. It includes a method `add` that takes a string of numbers and returns their sum.

## Features

1. **Empty String**: Returns `0` for an empty string.
2. **Single Number**: Returns the number itself.
3. **Multiple Numbers**: Computes the sum of all numbers separated by commas.
4. **New Line Delimiters**: Supports new lines as delimiters.
5. **Custom Delimiters**: Allows specifying a custom delimiter at the start of the string.
6. **Negative Numbers**: Throws an exception for negative numbers.


### Installation
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_folder>
   ```
2. Install dependencies (RSpec):
   ```bash
   gem install rspec
   ```
3. Run tests:
   ```bash
   rspec
   ```

## Usage

```ruby
require './lib/string_calculator'

puts StringCalculator.add("1,2,3") # Output: 6
```

## Testing
Run the test suite with:
```bash
rspec
```

### Input and Output

```ruby
StringCalculator.add("") # => 0
StringCalculator.add("1") # => 1
StringCalculator.add("1,2,3") # => 6
StringCalculator.add("1\n2,3") # => 6
StringCalculator.add("//;\n1;2") # => 3
StringCalculator.add("//|\n4|5|6") # => 15
StringCalculator.add("-1,2") # => Raises an error: "negative numbers not allowed: -1"

## Development
This project was developed incrementally, following good Git practices with multiple logical commits to ensure traceability and maintainability.

## Author
Prince

---

Happy coding! 🎉
