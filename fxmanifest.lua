fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
    '@mysql-async/lib/MySQL.lua',
}

shared_script 'config.lua'