convert -define jpeg:size=200x200 $1 -thumbnail '400x289>' \
          -gravity center  -crop 400x289+0+0\! \
          -background "#13123d" -flatten thumbs/$1
