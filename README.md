# C++20 Project

This project is a boilerplate C++20 application that demonstrates modern C++ techniques and practices. It includes a library with example functions, a public interface, and unit tests.

## Project Structure

```
cpp20-project
├── src
│   ├── main.cpp          # Entry point of the application
│   └── lib
│       ├── example.cpp   # Implementation of library functions
│       └── example.hpp   # Declarations of library functions
├── include
│   └── project
│       └── example.hpp   # Public interface for the project
├── test
│   └── example_test.cpp   # Unit tests for the library
├── CMakeLists.txt        # CMake configuration file
├── .clang-format          # Code formatting rules
├── .clang-tidy           # Linting rules for static analysis
├── compile_commands.json  # Compilation commands for IDEs
├── .gitignore            # Git ignore file
└── README.md             # Project documentation
```

## Getting Started

### Prerequisites

- CMake (version 3.10 or higher)
- A C++20 compatible compiler (e.g., GCC 10+, Clang 10+, MSVC 2019+)

### Building the Project

1. Clone the repository:
   ```
   git clone <repository-url>
   cd cpp20-project
   ```

2. Create a build directory:
   ```
   mkdir build
   cd build
   ```

3. Run CMake to configure the project:
   ```
   cmake ..
   ```

4. Build the project:
   ```
   cmake --build .
   ```

### Running the Application

After building, you can run the application from the build directory:
```
./cpp20-project
```

### Running Tests

To run the unit tests, you can use the following command after building:
```
ctest
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.