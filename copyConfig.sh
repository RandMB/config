#! /bin/sh

CONFIG_DIR="$HOME/.config";
GIT_DIR="$HOME/Git/config";

cp $CONFIG_DIR/compton.conf 	$GIT_DIR/.config/
cp $CONFIG_DIR/Trolltech.conf 	$GIT_DIR/.config/
cp $CONFIG_DIR/mpd/mpd.conf 	$GIT_DIR/.config/mpd
cp $CONFIG_DIR/ncmpcpp/config 	$GIT_DIR/.config/ncmpcpp/
cp $CONFIG_DIR/mpv/mpv.conf 	$GIT_DIR/.config/mpv/

cp -R $CONFIG_DIR/i3/ 		$GIT_DIR/.config/
cp -R $CONFIG_DIR/i3status/ 	$GIT_DIR/.config/
cp -R $CONFIG_DIR/fontconfig/ 	$GIT_DIR/.config/
cp -R $CONFIG_DIR/gtk-3.0/ 	$GIT_DIR/.config/
cp -R $CONFIG_DIR/qt5ct/ 	$GIT_DIR/.config/
cp -R $CONFIG_DIR/mpd/playlists/ $GIT_DIR/.config/mpd/

cp $HOME/.gtkrc-2.0 	$GIT_DIR/
cp $HOME/.zshrc 	$GIT_DIR/

cp $HOME/Scripts/copyConfig.sh $GIT_DIR/

cp /opt/vivaldi-snapshot/resources/vivaldi/style/custom.css $GIT_DIR/vivaldi-custom.css

