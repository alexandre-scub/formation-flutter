echo "Création du projet Dart: $1"
mkdir demo/$1 && cd "$_"
dart create -t console $1