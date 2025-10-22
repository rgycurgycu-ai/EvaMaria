if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://https://github.com/rgycurgycu-ai/EvaMaria/tree/master /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /EvaMaria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
