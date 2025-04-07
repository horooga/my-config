if [ -z "$1" ]; then
    echo "Usage:  app [app1] [opt: app2]..."
    echo ""
    echo "Run flatpak's apps"
    echo ""
    echo Apps:
    echo "    tg - telegram"
    echo "    vp - video player (vlc)"
    echo "    ie - image editor (lazpaint)"
    echo "    kp - key punch"
    echo "    br - blender"
    echo "    fm - file manager (dolphin)"
    echo "    sr - screen record (wl)"
    echo "    br [promilles] - set brightness level in promilles (brightnessctl)"
    echo "    lo - libre office"
    echo "    vb - OracleVM"
    echo "    ve - video edit"
    echo "    pm - postman"
    echo "    px - pixelorama"
fi

for i in "$@"; do
    pos="$#";
    case $i in
    tg)
        flatpak run org.telegram.desktop &
        ;;
    vp)
        vlc &
        ;;
    ie)
        flatpak run io.github.bgrabitmap.LazPaint &
        ;;
    kp)
        flatpak run dev.bragefuglseth.Keypunch &
        ;;
    bl)
        flatpak run org.blender.Blender &
        ;;
    fm)
        dolphin &
        ;;
    sr)
        wl-screenrec
        ;;
    br)
        brightnessctl s $[ 100 * ${!pos} ]
        ;;
    pdf)
        firefox ${!pos} &
        ;;
    lo)
        flatpak run org.libreoffice.LibreOffice &
        ;;
    vb)
        VirtualBox &
	;;
    ve)
        flatpak run org.pitivi.Pitivi &
	;;
    pm)
        firefox --new-window https://www.postman.com
	;;
    px)
        flatpak run com.orama_interactive.Pixelorama &
	;;
    esac
done
