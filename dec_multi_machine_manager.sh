
if [ $# -eq 0 ]; then
  echo "No arguments provides."
  exit 1
fi

# master context
PARAM1="10.96.183.254"



# slave node context
REMOTE_USER="lenovo"
REMOTE_HOST="10.96.80.129"
REMOTE_START_SCRIPT="dec_single_machine_start.sh"
PARAM2="10.96.80.129"
REMOTE_CLOSE_SCRIPT="dec_single_machine_close.sh"
REMOTE_PATH="/home/lenovo/桌面/linjian/new3/llama.cpp"

remote_start_command="cd $REMOTE_PATH && bash $REMOTE_START_SCRIPT $PARAM2"
remote_close_command="cd $REMOTE_PATH && bash $REMOTE_CLOSE_SCRIPT"

if [ "start" == $1 ]; then
  cd ~/桌面/llama_cpp/new3/llama.cpp
  bash dec_single_machine_start.sh $PARAM1
  ssh "$REMOTE_USER@$REMOTE_HOST" "$remote_start_command"
elif [ "close" == $1 ]; then
  cd ~/桌面/llama_cpp/new3/llama.cpp
  bash dec_single_machine_close.sh
  ssh "$REMOTE_USER@$REMOTE_HOST" "$remote_close_command"
fi