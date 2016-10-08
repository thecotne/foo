#!/usr/bin/env bash
wget http://sourceforge.net/projects/winscp/files/WinSCP/5.9.2/WinSCP-5.9.2-Portable.zip/download -O WinSCP.zip
mkdir -p /opt/WinSCP
unzip WinSCP.zip -d /opt/WinSCP
chmod +x /opt/WinSCP/WinSCP.exe
chmod +x /opt/WinSCP/WinSCP.com

touch /usr/share/applications/WinSCP.desktop

cat <<EOF > /usr/share/applications/WinSCP.desktop
[Desktop Entry]
Name=WinSCP
Exec=WinSCP
Icon=WinSCP
Type=Application
Categories=GTK;GNOME;Utility;
EOF

ln -s /opt/WinSCP/WinSCP.exe /bin/WinSCP

wrestool -x -n MAINICON /opt/WinSCP/WinSCP.exe > /opt/WinSCP/WinSCP.ico
convert /opt/WinSCP/WinSCP.ico\[0\] /usr/share/icons/WinSCP.png

rm WinSCP.zip -f
