cmake_minimum_required(VERSION 3.28)
project(MAS3114_MatLab)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(.idea)
include_directories("Assignment 0")
include_directories("Assignment 0/__MACOSX")
include_directories("Assignment 1")
include_directories("Assignment 1/__MACOSX")
include_directories("Assignment 2")
include_directories("Assignment 3")

add_executable(MAS3114_MatLab
        .idea/.gitignore
        .idea/workspace.xml
        "Assignment 0/__MACOSX/._Assignment0_Output_Octave.m"
        "Assignment 0/__MACOSX/._Exercise.m"
        "Assignment 0/Assignment0_Output.mlx"
        "Assignment 0/Assignment0_Output_Octave.m"
        "Assignment 0/Exercise.m"
        "Assignment 0/rank_comp.m"
        "Assignment 1/__MACOSX/._Exercise1.m"
        "Assignment 1/__MACOSX/._Exercise2.m"
        "Assignment 1/__MACOSX/._Exercise3.m"
        "Assignment 1/__MACOSX/._LS_solution.m"
        "Assignment 1/Assignment1_Output.mlx"
        "Assignment 1/Assignment1_Output_Octave.m"
        "Assignment 1/Exercise1.m"
        "Assignment 1/Exercise2.m"
        "Assignment 1/Exercise3.m"
        "Assignment 1/LS_solution.m"
        "Assignment 1/rank_comp.m"
        "Assignment 2/Assignment2_Output.mlx"
        "Assignment 2/Assignment2_Output_Octave.m"
        "Assignment 2/dependence.m"
        "Assignment 2/Exercise1.m"
        "Assignment 2/Exercise2.m"
        "Assignment 2/Exercise3.m"
        "Assignment 2/ExtraCredit.m"
        "Assignment 2/transformation.m"
        "Assignment 3/Assignment3_Output.mlx"
        "Assignment 3/Assignment3_Output_Octave.mlx"
        "Assignment 3/CramersRule.m"
        "Assignment 3/CramersRule3x3.m"
        "Assignment 3/Exercise1.m"
        "Assignment 3/Exercise2.m"
        "Assignment 3/Exercise3.m"
        "Assignment 3/ParticularSolution.m"
        README.md)
