#!/bin/bash
# creating temp file to store data
tempfile=$(mktemp);

# setting trap to delete tempfile on any exit point
trap "rm -f $tempfile" EXIT;

# number of lines that match conky
pslength=$(ps -a | grep conky | wc -l);

# storing conky matches into tmpfile to regex later 
psRe=$(ps -ax | grep conky | awk {'print $1 " " $5$6$7'} >> $tempfile);

#different conky configs
top="conky  -q --config=/etc/conky/conky-top.lua";
side="conky  -q --config=/etc/conky/conky-side.lua";
mid="conky  -q --config=/etc/conky/conky-mid.lua";

# sets all the conky windows
function setAll(){
  $top;
  $side;
  $mid;
};

# checks the existing processes and toggles them on and off as needed
function toggle(){
  # regex entire tempfile for the match
  match=$(grep "$1" $tempfile);
  
  # using awk to just get the matching PID from the grep match
  pid=$(grep "$1" $tempfile | awk {'print $1'});
  
  if [[ $match ]]; then
    $(kill $pid);
  else
    case "$1" in
      "conky-top")
        $top;
      ;;
      "conky-side")
        $side;
      ;;
      "conky-mid")
        $mid;
      ;;
    esac
  fi
};


# if no inputs given, toggles between all and none based on # of processes running
if [[ $# -eq 0 ]]; then
  if [ $pslength -le 2 ]; then
    setAll;	
  else
    killall conky &> /dev/null;
  fi
  exit;
fi

# main loop for inputs
for input in "$@"; do
  case $input in
    # shortlist for autocompletion
    shortlist)
      echo top side mid all none
    ;;
    *)
      case "$1" in
        "top")
          toggle "conky-top";
        ;;
        'side')
          toggle "conky-side";
        ;;
        "mid")
          toggle "conky-mid";
        ;;
        "all")
          killall conky &> /dev/null;
          setAll
        ;;
        "none")
          killall conky &> /dev/null;
        ;;
        *)
          echo "Not a valid option. Options are:";
          echo "top  side  mid  all  none";
          exit;
        ;;
      esac	
    ;;
  esac
  shift
done

