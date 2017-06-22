export PIP_REQUIRE_VIRTUALENV=true

syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

emulate sh -c 'source ~/.local/bin/virtualenvwrapper.sh'

WORKON_HOME=~/.venvs
