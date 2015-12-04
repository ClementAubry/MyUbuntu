REPORTTIME_TOTAL=5

# Displays the execution time of the last command if set threshold was exceeded
function cmd_execution_time {
  local stop=$((`date "+%s + %N / 1_000_000_000.0"`))
  let local "elapsed = ${stop} - ${cmd_start_time}"
  (( $elapsed > $REPORTTIME_TOTAL )) && print -P "%F{yellow}Execution time: ${elapsed}s%f"
}

# Get the start time of the command
function preexec_time {
  cmd_start_time=$((`date "+%s + %N / 1.0e9"`))
}

# Output total execution
function precmd_time {
  if (($+cmd_start_time)); then
    cmd_execution_time
  fi
}


precmd_functions+=(precmd_time)
preexec_functions+=(preexec_time)