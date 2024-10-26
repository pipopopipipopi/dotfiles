function fish_greeting                                            
    # do nothing
end

function fish_user_key_bindings
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
end

switch (uname)
    case Darwin
        fish_add_path /opt/homebrew/bin /Users/pipopo/.nix-profile/bin /run/current-system/sw/bin /nix/var/nix/profiles/default/bin
    case Linux
    case '*'
end

zoxide init fish | source
