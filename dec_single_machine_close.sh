#declare -a port_list
port_list=(8080 8081 8082 8083 8084)

#port_list[0]=8080
#port_list[1]=8081

for port in "${port_list[@]}"; do
  echo $port
  pids=$(lsof -ti :$port)
  if [ -n "$pids" ]; then
    echo "killing processes using port $port: $pids"
    for pid in $pids; do
      kill $pid
    done
  else
    echo "no process is using port $port"
  fi
done