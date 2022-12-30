if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gourav1255/file-url-bot /file-url-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-url-bot
fi
cd /file-url-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
