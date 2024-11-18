xcode-select --install &> /dev/null
until $(xcode-select --print-path &> /dev/null); do
  sleep 5;
done
curl -Lo /tmp/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
chmod +x /tmp/yadm
/tmp/yadm clone --bootstrap https://github.com/sheatsley/dotfiles.git
