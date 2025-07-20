#!/bin/bash

print_m() {
    local num="$1"     # Captura o primeiro argumento (versão do Python)
    local modulo="$2"  # Captura o segundo argumento (nome do módulo)

    # Determina o comprimento máximo da string
    local titulo_python="PYTHON ${num}"
    local titulo_modulo="MODULE ${modulo}"
    
    # Calcula o tamanho máximo necessário
    local max_len=${#titulo_python}
    if [ ${#titulo_modulo} -gt $max_len ]; then
        max_len=${#titulo_modulo}
    fi

    # Adiciona margem para manter uma borda visualmente agradável
    local total_len=$((max_len + 4))

    # Gera a linha de separação com base no tamanho necessário
    local separator=$(printf "%*s" "$total_len" | tr ' ' '-')

    # Imprime a saída formatada
    printf "\n"
    echo "$separator"
    printf "%s%*s%s\n" "| " $((total_len - 4)) "$titulo_python" " |"
    printf "%s%*s%s\n" "| " $((total_len - 4)) "$titulo_modulo" " |"
    echo "$separator"
}

if [ "$#" -eq 0 ]; then
    echo "MÓDULO inválido. Use 1, 2, 3, 4, 5"
    echo "--------------------------------------------------------------------------"
    echo "  1 => purecpp_libs"
    echo "  2 => purecpp_meta"
    echo "  3 => purecpp_embed"
    echo "  4 => purecpp_extract"
    echo "  5 => purecpp_chunks_clean"
    echo "--------------------------------------------------------------------------"
else
    case "$1" in
        1)  
            cd "CMAKE_LIBS"
            print_m 8 "CMAKE_LIBS"
            ./o.sh 8
            print_m 9 "CMAKE_LIBS"
            ./o.sh 9
            print_m 10 "CMAKE_LIBS"
            ./o.sh 10
            print_m 11 "CMAKE_LIBS"
            ./o.sh 11
            print_m 12 "CMAKE_LIBS"
            ./o.sh 12
            print_m 13 "CMAKE_LIBS"
            ./o.sh 13 
            cd ..
            ;;
        2)
            cd "CMAKE_META"
            print_m 8 "CMAKE_META"
            ./o.sh 8
            print_m 9 "CMAKE_META"
            ./o.sh 9
            print_m 10 "CMAKE_META"
            ./o.sh 10
            print_m 11 "CMAKE_META"
            ./o.sh 11
            print_m 12 "CMAKE_META"
            ./o.sh 12
            print_m 13 "CMAKE_META"
            ./o.sh 13
            cd ..
            ;;
        3)  
            cd "CMAKE_EMBED"
            print_m 8 "CMAKE_EMBED"
            ./o.sh 8
            print_m 9 "CMAKE_EMBED"
            ./o.sh 9
            print_m 10 "CMAKE_EMBED"
            ./o.sh 10
            print_m 11 "CMAKE_EMBED"
            ./o.sh 11
            print_m 12 "CMAKE_EMBED"
            ./o.sh 12
            print_m 13 "CMAKE_EMBED"
            ./o.sh 13
            cd ..
            ;;
        4)
            cd "CMAKE_EXTRACT"
            print_m 8 "CMAKE_EXTRACT"
            ./o.sh 8
            print_m 9 "CMAKE_EXTRACT"
            ./o.sh 9
            print_m 10 "CMAKE_EXTRACT"
            ./o.sh 10
            print_m 11 "CMAKE_EXTRACT"
            ./o.sh 11
            print_m 12 "CMAKE_EXTRACT"
            ./o.sh 12
            print_m 13 "CMAKE_EXTRACT"
            ./o.sh 13
            cd ..
            ;;
        5)  
            cd "CMAKE_CHUNKS_CLEAN"
            print_m 8 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 8
            print_m 9 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 9
            print_m 10 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 10
            print_m 11 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 11
            print_m 12 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 12
            print_m 13 "CMAKE_CHUNKS_CLEAN"
            ./o.sh 13
            cd ..
            ;;
        *)
            echo "MÓDULO inválido. Use 1, 2, 3, 4, 5"
            echo "--------------------------------------------------------------------------"
            echo "  1 => purecpp_libs"
            echo "  2 => purecpp_meta"
            echo "  3 => purecpp_embed"
            echo "  4 => purecpp_extract"
            echo "  5 => purecpp_chunks_clean"
            echo "--------------------------------------------------------------------------"
            ;;
            
    esac
fi
# #-----------------------------------------------------------------------------------------------------------------------------------
