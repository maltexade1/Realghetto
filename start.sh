if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hislordshipb/Hislordship.git /Hislordship
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Hislordship
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting Hislordship...."
python3 bot.py
