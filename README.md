# cpp-flops-benchmark

## Description
A simple program that benchmarks some arithmetic functions from the <cmath> library by running them n times and creating an average runtime. The output is formatted for a latex tabular.
  
## Installation
The project is built with CMake. It's developed on Ubuntu 20.04.4 LTS and I've made no efford towards compatibility for other systems. Some modifications to the CMake file might be needed.
  
## Run
When the project is built the binary is in the "build/bin" directory.
  
## Information
The results will probably vary between machines. On Linux the cpu information can be obtained by running the command "lscpu".
