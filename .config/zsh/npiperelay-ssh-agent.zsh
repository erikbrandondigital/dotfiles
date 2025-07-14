# NPIPERELAY Setup for KeepassXC SSH Agent on Windows Subsystem for Linux (WSL)
# - Provides access to Windows SSH Agent from WSL and enables sharing of SSH Keys stored in KeepassXC.

# Check if current Kernel Version is Windows Subsystem for Linux (WSL).
if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ];
then

  export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
  ss -a | grep -q $SSH_AUTH_SOCK
  if [ $? -ne 0 ]; then
    rm -f $SSH_AUTH_SOCK
    npiperelaypath=$(wslpath "C:/npiperelay")
    (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"$npiperelaypath/npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
  fi

  echo "WSL Detected -- Loaded NPIPERELAY SSH Agent"
fi

