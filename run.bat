@echo off

echo hello from Mahmoud And Wael 👋👋

rem Check if Julia is installed
where julia >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo Julia is not installed. Please download and install it from: https://julialang.org/downloads/
    exit /b
)

rem Install required Julia packages
julia -e "using Pkg; Pkg.add(\"FFTW\"); Pkg.add(\"WriteVTK\"); Pkg.add(\"ProgressMeter\"); Pkg.add(\"Interpolations\")"

rem Run the Julia script
julia fluid_simulation.jl
