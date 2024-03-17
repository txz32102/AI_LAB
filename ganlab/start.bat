@echo on
call nvm use 8.0.0
call yarn prep
call wsl
call nvm use 8.0.0
call .\scripts\watchdemo
```