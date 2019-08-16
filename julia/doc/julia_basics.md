# Package management

  # update packages
  Pkg.update()

  # Clear Julia environment
  rm -rf ~/.julia
    
  # List installed packages
  Pkg.status()

  # import 2 packages in single line
  using Gadfly, DataFrames;
  
# Julia commands

  # show help for command
  ?command 

  # exit from Julia
  exit(0)
  
# Jupiter

## Setup

After setup run:

    julia  
    
Then    

    Pkg.add("IJulia")
    
or
 
    Pkg.build("IJulia")

and

    Pkg.build("ZMQ")

## Run Jupiter

    using IJulia
    notebook()

## See also
https://github.com/JuliaLang/IJulia.jl

# Imports

## Imports - data frames

  Pkg.add("Distributions")
  Pkg.add("DataFrames")
  Pkg.add("DataArrays")

## Imports - Gadfly

  Pkg.add("Gadfly")
  sudo yum install fftw
  Pkg.add("FFTW")
  Pkg.build("FFTW")

## See also
* https://en.wikibooks.org/wiki/Introducing_Julia/DataFrames
* http://gadflyjl.org/stable/lib/geoms/geom_vline.html

# Plot packages
List:
* PyPlot  
* Plot.ly
* Gadfly

