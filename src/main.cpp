#include "ProjectConfig.hpp" // Contains CMake defined variables

#include <iostream> // for std output
#include <chrono> // time
#include <cmath> // math functions
#include <random> // random generation
#include <string> // strings
#include <fstream> // file operations

/**
 * @brief Runs a function with a single float argument n times and records the average runtime of one function call.
 * 
 * @param f Pointer to the function that accepts one float value as an argument
 * @param n Number of rounds to run the function
 * @return const double The average runtime in nanoseconds [ns]
 */
const double test1arg(float (*f)(float), size_t n)
{
    double avg {0};
    for (size_t i {0}; i < n; i++)
    {
        float r = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
        auto start = std::chrono::steady_clock::now();

        f(r); // run function

        auto end = std::chrono::steady_clock::now();
        auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

        avg += (double)elapsed / (double)n;
    }

    return avg;
}

/**
 * @brief Runs a function with two float argument n times and records the average runtime of one function call.
 * 
 * @param f Pointer to the function that accepts two float values as an argument
 * @param n Number of rounds to run the function
 * @return const double The average runtime in nanoseconds [ns]
 */
const double test2arg(float (*f)(float, float), size_t n)
{
    double avg {0};
    for (size_t i {0}; i < n; i++)
    {
        float r = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
        float s = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
        auto start = std::chrono::steady_clock::now();

        f(r, s); // run function

        auto end = std::chrono::steady_clock::now();
        auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

        avg += (double)elapsed / (double)n;
    }

    return avg;
}

// Arithmetic helper functions that can be passed to the timer functions.
float add(float a, float b) { return a + b; }
float sub(float a, float b) { return a - b; }
float mult(float a, float b) { return a * b; }
float div(float a, float b) { return a / b; }

/**
 * @brief Main function runs the benchmark on the specified function and outputs the
 * results in a text file (formatted for a latex tabular)
 * 
 * @return int exit status 
 */
int main()
{
    std::cout << "Running " << PROJECT_NAME << "..." << std::endl;
    const size_t rounds {100000000}; // number of rounds to run each function.

    std::string file_name = "../Benchmark.txt"; // define file name
    std::ofstream file(file_name, std::ofstream::out | std::ofstream::trunc); // 

    if (!file) // check that output file works
    {
        std::cerr << "[Error] Could not open/create output file. Exiting..." << std::endl;
        exit(EXIT_FAILURE);
    }

    // format file and run tests
    file << "\\begin{tabular}{l|c}\n";

    file << "\tsin:     & " << test1arg(std::sin, rounds) << " \\\\\n";
    file << "\tcos:     & " << test1arg(std::cos, rounds) << " \\\\\n";
    file << "\tasin:    & " << test1arg(std::asin, rounds) << " \\\\\n";
    file << "\tacos:    & " << test1arg(std::acos, rounds) << " \\\\\n";
    file << "\ttan:     & " << test1arg(std::tan, rounds) << " \\\\\n";
    file << "\tatan:    & " << test1arg(std::atan, rounds) << " \\\\\n";
    file << "\tsqrt:    & " << test1arg(std::sqrt, rounds) << " \\\\\n";
    file << "\tpow:     & " << test2arg(std::pow, rounds) << " \\\\\n";
    file << "\tfmod:    & " << test2arg(std::fmod, rounds) << " \\\\\n";
    file << "\tadd:     & " << test2arg(add, rounds) << " \\\\\n";
    file << "\tsub:     & " << test2arg(sub, rounds) << " \\\\\n";
    file << "\tmult:    & " << test2arg(mult, rounds) << " \\\\\n";
    file << "\tdiv:     & " << test2arg(div, rounds) << " \\\\\n";

    file << "\\end{tabular}" << std::endl;

    file.close(); // close file

    return 0;
}