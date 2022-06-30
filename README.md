# conky-config
My current conky setup consisting of three different windows, accompanied by a shell script to toggle them in various ways, and a completion file to allow/show autocompletion options.


The config files should be placed in your standard conky config path, typically `/etc/conky/`

I suggest keeping all custom scripts together in their own folder and then symlinking to the appropriate place using `sudo ln -s`.



**conky-completion** should be placed in the bash-completions folder:

`sudo ln -s /path/to/your/conky-completion /usr/share/bash-completion/completions/`

**startup_conky** should be placed in the bin folder to allow quick calling with the help of an alias:

`sudo ln -s /path/to/your/startup_conky /bin/`



Then add the following lines to your .bashrc or .zshrc file:

```
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

source /path/to/your/conky-completion

alias conky="startup_conky"
```
With these additions, you can now invoke which conky window to open simply by typing `conky top` or `conky mid side` for example. 
If you want to toggle the opening and closing of all windows simply use `conky`. 
If you want to open all windows, use `conky all`, and for no windows use `conky none`.
