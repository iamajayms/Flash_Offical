if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BXBotz2021/Spider-Official.git /Spider-Official
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Spider-Official
fi
cd /Spider-Official
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
