set -xg LSD_EXISTS (which lsd ^/dev/null)

function __fzf_dir_preview -d "Preview directory in side panel"
    if test -n "$LSD_EXISTS"
        lsd -l --color always $argv[1]
    else
        ls -l $argv[1]
    end
end