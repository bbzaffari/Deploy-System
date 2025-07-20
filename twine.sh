#!/bin/bash

# Se nenhum parâmetro for fornecido, remove tudo
if [ "$#" -eq 0 ]; then
    echo "--------------------------------------------------------------------------"
    echo "Parâmetro inválido. Use 0, 00, 1, 2, 3, 4, 5, 6, 7, 8"
    echo "0)Upload purecpp_libs..."
    echo "00)Upload purecpp_libs_t..."
    echo "1)Upload purecpp_extract..."
    echo "2)Upload purecpp_chunks_clean..."
    echo "3)Upload purecpp_chunks_clean2..."
    echo "4)Upload purecpp_meta..."
    echo "5)Upload purecpp_embed..."
    echo "6)Upload purecpp..."
    echo "7)Upload purecpp_modules_all..."  
    echo "8)upload purecpp_imports_test..."
    echo "--------------------------------------------------------------------------"
else
    case "$1" in
        0)
            echo "Uploading purecpp_libs..."
            cd ./15_PIP_MAIN/purecpp_libs
            ls | cat -A
            twine upload dist/*
            ;;
        00)
            echo "Uploading purecpp_libs_t..."
            cd ./15_PIP_MAIN/purecpp_libs_t
            ls | cat -A
            twine upload dist/*
            ;;
        1)
            echo "Uploading purecpp_extract..."
            cd ./15_PIP_MAIN/purecpp_extract
            ls | cat -A
            twine upload dist/*
            ;;
           
        2)
            echo "Uploading purecpp_chunks_clean..."
            cd ./15_PIP_MAIN/purecpp_chunks_clean
            ls | cat -A
            twine upload dist/*
            ;;

        3)
            echo "Uploading purecpp_chunks_clean2..."
            cd ./15_PIP_MAIN/purecpp_chunks_clean2
            ls | cat -A
            twine upload dist/*
            ;;

        4)
            echo "Uploading purecpp_meta..."
            cd ./15_PIP_MAIN/purecpp_meta
            ls | cat -A
            twine upload dist/*           
            ;;
        5)
            echo "Uploading purecpp_embed..."
            cd ./15_PIP_MAIN/purecpp_embed
            ls | cat -A
            twine upload dist/*
            ;;
        6)
            echo "Uploading purecpp..."
            cd ./15_PIP_MAIN/purecpp
            ls | cat -A
            twine upload dist/*
            ;;
        7)
            echo "Uploading purecpp_modules_all..."-
            echo "---------------------------------------------"
            echo "Uploading purecpp_libs..."
            cd ./15_PIP_MAIN/purecpp_libs
            ls | cat -A
            twine upload dist/*
            cd ..
            echo "----------------------------------------------"
            echo "Uploading purecpp_extract..."
            cd ./purecpp_extract
            ls | cat -A
            twine upload dist/*
            cd ..
            echo "----------------------------------------------"
            echo "Uploading purecpp_chunks_clean..."
            cd ./purecpp_chunks_clean
            ls | cat -A
            twine upload dist/*
            cd ..
            echo "----------------------------------------------"
            echo "Uploading purecpp_meta..."
            cd ./purecpp_meta
            ls | cat -A
            twine upload dist/*   
            cd ..
            echo "----------------------------------------------"
            echo "Uploading purecpp_embed..."
            cd ./purecpp_embed
            ls | cat -A
            twine upload dist/*
            cd ..
            echo "----------------------------------------------"
            echo "Uploading purecpp..."
            cd ./purecpp
            ls | cat -A
            twine upload dist/*
            ;;
        8)
            echo "Uploading purecpp_imports_test..."
            cd ./15_PIP_MAIN/purecpp_imports_test
            ls | cat -A
            twine upload dist/*                       
            ;;
        *)  
            echo "--------------------------------------------------------------------------"
            echo "Parâmetro inválido. Use 0, 00, 1, 2, 3, 4, 5, 6, 7, 8"
            echo "0)Upload purecpp_libs..."
            echo "00)Upload purecpp_libs_t..."
            echo "1)Upload purecpp_extract..."
            echo "2)Upload purecpp_chunks_clean..."
            echo "3)Upload purecpp_chunks_clean2..."
            echo "4)Upload purecpp_meta..."
            echo "5)Upload purecpp_embed..."
            echo "6)Upload purecpp..."
            echo "7)Upload purecpp_modules_all..."  
            echo "8)upload purecpp_imports_test..."
            echo "--------------------------------------------------------------------------"
            ;;
        esac
fi