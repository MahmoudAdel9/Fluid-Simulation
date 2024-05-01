# Fluid Simulation with Stable Fluids and FFT in Julia

## objective of the Project

The primary objective of this project is to simulate fluid flow using the Stable Fluids method proposed by Jos Stam, augmented with the Fast Fourier Transform (FFT) for efficient computations. Mainly this project serves as an exploration of Julia's capabilities and its application in scientific computing projects. By utilizing Julia for this simulation, we aim to showcase the language's power and versatility in solving complex computational tasks in fluid dynamics and related fields.

## How to Use

1. **Setup**:

   - Ensure you have Julia installed on your system. You can download it from [here](https://julialang.org/downloads/).
   - Clone this repository to your local machine.

2. **Installation**:

   - Open a terminal and navigate to the directory where the project is cloned.
   - Install the required packages by running:
     ```julia
     using Pkg
     Pkg.add("FFTW")
     Pkg.add("WriteVTK")
     Pkg.add("ProgressMeter")
     Pkg.add("Interpolations")
     ```

3. **Executing the Code**:

   - Run the main script by executing the following command in Julia:
     ```julia
     include("fluid_simulation.jl")
     ```
   - This will execute the code, initiating the fluid flow simulation. Please note that the execution may take some time depending on your system's resources and the specified parameters.
   - After execution, the code will generate `.vti` files inside the `CPL_Folder` directory and a file named `transient_vector.pvd`. The `transient_vector.pvd` file is used for visualization in Paraview.

   #### OR

   - Run our custom script in cmd 😉:
     ```julia
     run.bat
     ```

4. **Visualizing Results in Paraview**:
   - Once the execution is completed, you can visualize the results using Paraview.
   - Open Paraview and load the generated `transient_vector.pvd` file located in the `CPL_Folder` directory.
   - Use Paraview's visualization tools to explore and analyze the fluid flow.

## Physical Background and Equations

### Overview

Fluid flow simulations model the behavior of liquids or gases under various conditions, providing valuable insights for engineering, environmental science, and other fields.

### Equations

The simulation is governed by the following equations:

- **Momentum Equation**: Describes how the velocity of the fluid changes over time, considering forces, viscosity, and pressure gradients.
- **Incompressibility Condition**: Ensures that the fluid remains incompressible, meaning its density does not change.

These equations are solved numerically using the Stable Fluids method, which is known for its stability and efficiency.

## Required Packages

- `FFTW`: Fast Fourier Transform library for efficient computations.
- `WriteVTK`: Package for writing data in VTK format for visualization in Paraview.
- `ProgressMeter`: Provides progress bars for monitoring simulation progress.
- `Interpolations`: Package for interpolating values between grid points.
- `LinearAlgebra`: Standard Julia package for linear algebra operations.

## Why Julia?

Julia was chosen for this project due to its powerful features and advantages:

- **High Performance**: Julia offers performance comparable to statically compiled languages like C and Fortran, crucial for complex simulations like fluid flow.
- **Ease of Use**: Julia's clean syntax and intuitive design make it accessible to scientists and engineers, facilitating the development and understanding of the simulation code.
- **Interoperability**: Julia seamlessly integrates with other languages like C, Fortran, and Python, enabling the use of existing libraries and tools.
- **Parallel Computing**: Julia provides built-in support for parallel computing, allowing simulations to leverage multiple cores and processors for faster execution.
- **Growing Ecosystem**: Julia has a vibrant community and a rich ecosystem of packages tailored for scientific computing tasks, enhancing productivity and collaboration.

## Benefits of Using Julia

- **Performance**: Julia's speed and efficiency make it well-suited for computationally intensive tasks like fluid simulations.
- **Flexibility**: Julia's dynamic nature allows for rapid prototyping and experimentation, enabling researchers to explore different scenarios and parameters easily.
- **Community Support**: Julia's active community provides access to a wide range of packages and resources, accelerating development and problem-solving.
- **Open Source**: Julia is open-source software, fostering transparency, collaboration, and innovation within the scientific computing community.

## Conclusion

This project demonstrates the capabilities of Julia for simulating fluid flow using advanced numerical techniques. By leveraging Julia's performance, ease of use, and interoperability, we can gain valuable insights into the behavior of fluids and their applications in various domains.
