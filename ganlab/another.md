# nodejs版本为8.0
    nvm install 8.0
    nvm use 8.0.0
    yarn prep

# bat脚本
    // 名字为start.bat
    @echo off
    call nvm use 8.0.0
    call yarn run
# Shell脚本
    nvm use 8.0.0
    yarn run
    // 记得添加权限 chmod +x start.sh