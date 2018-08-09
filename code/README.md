Orginal BSc project code.

New and refactored code in project "letomes".

`testing.py` - main script

`reduced3body.py` - called by mainscript. Sets initial conditions, initiate trajectory runs or searches/, builds lists of variables.

`search.py` - Initiates many independent trajectories with slightly different initial conditions/burns. Hevy parallelization.

`symplectic.py` - Contains numerical algorithms for single time steps and master function `sympletic` that represents a single run, and calls time steps in a loop until terminal condition is reached (crash into earth, hit moon or timeout).

`integrate.py` - Not used. Essentially an old version of `sympletic.py` with some varations of numerical integration functions.
