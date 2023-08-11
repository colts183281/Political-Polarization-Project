
#input state (s1 etc), date (20200429 etc), and t_date (2020-02-03 00:00:00)
collect_data <- function(dem_org, rep_org, s, d, t_d){
  #create the ukey
  create_ukey(dem_org, rep_org, s, d)
  #set up parallel processing
  cl <- detectCores()
  cl <- parallel::makeCluster(cl)
  registerDoParallel(cl)
  #create a list of functions to loop through
  fun_collection <- list(tmls = function(state, date, t_date) create_tmls(state, date, t_date),
                         frs = function(state, date, ...) create_fr(state, date),
                         flws = function(state, date, ...) create_flw(state, date))
  #the list of names to identify the functions in the list
  list <- c("tmls", "frs", "flws")
  #foreach and %dopar% carries out all three iterations at one time in multiple processors
  #it plugs each i from the list resulting in all three functions running at once
  foreach(i = list, .packages = c("polproject", "tidyverse", "rtweet", "doParallel", "foreach")) %dopar% {
    fun_collection[[paste0(i)]](s, d, t_d)
  }
  #stop the parallel cluster
  parallel::stopCluster(cl)
  #deid edge list using state and dat
  deid_edge_save(s, d)
  #deid tmls using state and date
  deid_tmls_save(s, d)
}








