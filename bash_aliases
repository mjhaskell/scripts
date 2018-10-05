alias jdrive='sudo mount -t cifs //fs-caedm.et.byu.edu/mhask94 ~/J -o  username=mhask94,rw,uid=1002'
alias copter='source ~/copter_ws/devel/setup.bash --extend'
ChangeVidSpeed() { ffmpeg -i "$1" -filter:v "setpts='$3'*PTS" "$2"; } # $1=input $2=output $3=frames to cut out (ex: 0.5)
cdl() { cd $1; ls ${2}; }
CropVid() { ffmpeg -i "$1" -ss "$3" -to "$4" -async 1 "$2"; } # $1=input $2=output $3=start_time (00:00:00) $4=end_time (00:01:30) for 1min 30sec
alias googletest='git submodule add https://github.com/google/googletest.git'

alias sbashrc='source ~/.bashrc'
alias vbashrc='vim ~/.bashrc'
alias vrosrc='vim ~/.rosrc'