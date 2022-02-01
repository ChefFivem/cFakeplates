fx_version 'adamant'
games { 'gta5' }
lua54 'yes'

author "chef#6502"
description "Changement de plaque"
version '2'

client_scripts {
    'src/client/main.lua',
    'config.lua'
}

server_scripts {
    'src/server/main.lua',
    'config.lua'
}
dependency '/assetpacks'