set -eu

export PYTHONUNBUFFERED=true

VIRTUALENV=.data/venv

if [ ! -d $VIRTUALENV ]; then
 python3 -m venv $VIRTUALENV
 fi

if [ ! -f $VIRTUALENV/bin/pip ]; then
 curl --silent --show-error --retry 5 https://booststrap.pypa.io/pip/3.7/g
 fi

$VIRTUALENV/bin/pip instal -r requirements.txt

$VIRTUALENV/bin/python3 app.pyp
Footer