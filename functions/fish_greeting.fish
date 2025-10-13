function fish_greeting
    echo -ne '\x1b[38;5;16m'  # Set colour to primary
echo ''
echo '                   _,;_;/-",_           '
echo '                ,")  (  ((O) "  .`,     '
echo '             ,` (    )  ;  -.,/;`}      '
echo '           ,"  o    (  ( (  . -_-.      '
echo '          `.  ;      ;  ) ) \`; \;      '
echo '            `., )   (  ( _-`   \,\'      '
echo '               "`\'-,,`..>               '
echo ''
    set_color normal
    fastfetch --key-padding-left 5
end
