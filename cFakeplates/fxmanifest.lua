fx_version 'adamant'
games { 'gta5' }
lua54 'yes'

author "chef#6502"
description "Changement de plaque"

client_scripts {
    'client/main.lua',
    'config.lua'
}

server_scripts {
    'server/main.lua',
    'config.lua'
}
dependency '/assetpacks'