# Loading tictoc package to take the time of each script
library(tictoc)

# Time of first script
tic("Script 1")
source("Scripts/Script1.R")
toc()

# Time of second script
tic("Script 2")
source("Scripts/Script2.R")
toc()

# Time of third script
tic("Script 3")
source("Scripts/Script3.R")
toc()

# Script 1 takes 57.94 seconds
# Script 2 takes 40.63 seconds
# Script 3 takes 32.31 seconds

# It makes sense that both script 2 and 3 are faster than script 1, as they use
# multiple cores to compute.
# Script 3 takes the least amount of time, maybe because splitting the
# M simulations, instead of paralleling the loop, distributes the
# work better to each core.