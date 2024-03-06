if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a pg 'docker run --pull always --rm -it -v $PWD:/projo/(basename $PWD) --hostname (hostname) nextfire/projo-generate (basename $PWD)'
abbr -a sachi 'docker run --pull always --rm -it -v $HOME/.config/sachi:/root/.config/sachi -v $PWD:/media ghcr.io/nextfire/sachi:main rename /media'
