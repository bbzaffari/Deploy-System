#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "--------------------------------------------------------------------------"
    echo "Parâmetro inválido. Use 0, 00, 1, 2, 3, 4, 5, 6, 7"
    echo "0)Criar whl cp3xx de purecpp_libs..."
    echo "00)Criar whl cp3xx de purecpp_libs_t..."
    echo "1)Criar whl cp3xx de purecpp_extract..."
    echo "2)Criar whl cp3xx de purecpp_chunks_clean..."
    echo "3)Criar whl cp3xx de purecpp_chunks_clean2..."
    echo "4)Criar whl cp3xx de purecpp_meta..."
    echo "5)Criar whl cp3xx de purecpp_embed..."
    echo "6)Criar whl cp3xx de purecpp..."
    echo "--------------------------------------------------------------------------"
else
    case "$1" in
        0)
            echo "Criando whl cp3xx de  purecpp_libs..."
            cd ./8_PIP/
            ./o.sh 00
            cd ..
            cd ./9_PIP/
            ./o.sh 00
            cd ./10_PIP/
            ./o.sh 00
            cd ..
            cd ./11_PIP/
            ./o.sh 00
            cd ..
            cd ./12_PIP/
            ./o.sh 00
            cd ..
            cd ./13_PIP/
            ./o.sh 00
            cd ..
            ;;
        00)
            echo "Criando whl cp3xx de  purecpp_libs_t..."
            cd ./10_PIP/
            ./o.sh 0000
            cd ..
            cd ./11_PIP/
            ./o.sh 0000
            ;;
        1)
            echo "Criando whl cp3xx de  purecpp_extract..."
            cd ./8_PIP/
            ./o.sh 11
            cd ..
            cd ./9_PIP/
            ./o.sh 11
            cd ..            
            cd ./10_PIP/
            ./o.sh 11
            cd ..
            cd ./11_PIP/
            ./o.sh 11
            cd ..
            cd ./12_PIP/
            ./o.sh 11
            cd ..
            cd ./13_PIP/
            ./o.sh 11
            cd ..
            ;;
           
        2)
            echo "Criando whl cp3xx de  purecpp_chunks_clean..."
            cd ./8_PIP/
            ./o.sh 22
            cd ..
            cd ./9_PIP/
            ./o.sh 22
            cd ..
            cd ./10_PIP/
            ./o.sh 22
            cd ..
            cd ./11_PIP/
            ./o.sh 22
            cd ..
            cd ./12_PIP/
            ./o.sh 22
            cd ..
            cd ./13_PIP/
            ./o.sh 22
            cd ..
            ;;

        3)
            echo "Criando whl cp3xx de  purecpp_chunks_clean2..."
            cd ./10_PIP/
            ./o.sh 33
            cd ..
            cd ./11_PIP/
            ./o.sh 33
            ;;

        4)
            echo "Criando whl cp3xx de  purecpp_meta..."
            cd ./8_PIP/
            ./o.sh 44
            cd ..
            cd ./9_PIP/
            ./o.sh 44
            cd ..
            cd ./10_PIP/
            ./o.sh 44
            cd ..
            cd ./11_PIP/
            ./o.sh 44  
            cd ..
            cd ./12_PIP/
            ./o.sh 44
            cd ..
            cd ./13_PIP/
            ./o.sh 44
            cd ..       
            ;;
        5)
            echo "Criando whl cp3xx de  purecpp_embed..."
            cd ./8_PIP/
            ./o.sh 55
            cd ..
            cd ./9_PIP/
            ./o.sh 55
            cd ..
            cd ./10_PIP/
            ./o.sh 55
            cd ..
            cd ./11_PIP/
            ./o.sh 55
            cd ..
            cd ./12_PIP/
            ./o.sh 55
            cd ..
            cd ./13_PIP/
            ./o.sh 55
            cd ..
            ;;
        6)
            echo "Criando whl cp3xx de  purecpp..."
            cd ./8_PIP/
            ./o.sh 10
            cd ..
            cd ./9_PIP/
            ./o.sh 10
            cd ..
            cd ./10_PIP/
            ./o.sh 10
            cd ..
            cd ./11_PIP/
            ./o.sh 10
            cd ..
            cd ./12_PIP/
            ./o.sh 10
            cd ..
            cd ./13_PIP/
            ./o.sh 10
            cd ..
            ;;
        7)
            echo "Criando whl cp3xx de  purecpp_modules_all..."
            cd ./8_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            cd ./9_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            cd ./10_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            cd ./11_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            cd ./12_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            cd ./13_PIP/
            ./o.sh 9
            ./o.sh 10
            cd ..
            ;;
       
        *)  
            echo "--------------------------------------------------------------------------"
            echo "Parâmetro inválido. Use 0, 00, 1, 2, 3, 4, 5, 6, 7"
            echo "0)Criar whl cp3xx de purecpp_libs..."
            echo "00)Criar whl cp3xx de purecpp_libs_t..."
            echo "1)Criar whl cp3xx de purecpp_extract..."
            echo "2)Criar whl cp3xx de purecpp_chunks_clean..."
            echo "3)Criar whl cp3xx de purecpp_chunks_clean2..."
            echo "4)Criar whl cp3xx de purecpp_meta..."
            echo "5)Criar whl cp3xx de purecpp_embed..."
            echo "6)Criar whl cp3xx de purecpp..."
            echo "--------------------------------------------------------------------------"
            ;;
        esac
fi