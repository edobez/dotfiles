function cdw
    echo "Windows path: $argv"
    set normpath (wslpath $argv)
    echo "WSL path: $normpath"
    cd $normpath
end
