# ! /bin/bash

#    tar: empaqueta múltiples archivos
#    gzip: empaqueta un único archivo, comprimiendo el empaquetado en conjunto con tar
#    pbzip2: soporta el multicore, multiprocesador. Empaqueta un solo archivo (instalar)


echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf packetShellCourse.tar shellCourse/*.sh
# Cuando se empaqueta con gzip el empaquetamiento se elimina
# gzip packetShellCourse.tar

# (crear una condicion IF (type pbzip2) para verificar si esta instalado el programa)
pbzip2 -f packetShellCourse.tar


# c crea un nuevo archivo tar
# f nombre del archivo
# C Extraer tus archivos a un directorio diferente, puedes usar la opción -C
# >> output redirection. Appends the existing file, or creates a file
# > output redirection. Overwrites the existing file, or creates a file
# < input redirection. si el comando lee stdin, ahora leera desde el archivo en lugar del teclado.
# << is known as here-document structure
# <<< is known as here-string

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf shellCourse/*.sh -C > packetShellCourseDos.tar.bz2

# stdin     standart input
# stdout    standart output
# stderr    standart error (output)
