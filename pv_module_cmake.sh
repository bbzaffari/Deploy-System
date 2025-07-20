#!/bin/bash
set -e  # Faz o script sair imediatamente se ocorrer algum erro

# ------------------------------------------------------------------------
# Função de uso (help):
mostrar_uso() {
  echo "USO: $0 <versao_python> <modulo>"
  echo "------------------------------------------------"
  echo "VERSÃO PYTHON:"
  echo "  8   => cp38-cp38"
  echo "  9   => cp39-cp39"
  echo "  10  => cp310-cp310"
  echo "  11  => cp311-cp311"
  echo "  12  => cp312-cp312"
  echo "  13  => cp313-cp313"
  echo "------------------------------------------------"
  echo "MÓDULO:"
  echo "  1 => purecpp_libs"
  echo "  2 => purecpp_meta"
  echo "  3 => purecpp_embed"
  echo "  4 => purecpp_extract"
  echo "  5 => purecpp_chunks_clean"
  echo "------------------------------------------------"
}

# ------------------------------------------------------------------------
# Se não foram passados 2 parâmetros, exibe ajuda e sai
if [ $# -lt 2 ]; then
  mostrar_uso
  exit 1
fi

PYTHON_VERSION="$1"
MODULO="$2"

# ------------------------------------------------------------------------
# Para cada versão de Python
case "$PYTHON_VERSION" in

  8)
    echo "====================================================================="
    echo ">>> PYTHON 8 (cp38-cp38)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        echo "Compilando 'purecpp_libs'..."
        cd "CMAKE_LIBS"
        ./o.sh 8
        cd ..
        ;;
      2)
        echo "Compilando 'purecpp_meta'..."
        cd "CMAKE_META"
        ./o.sh 8
        cd ..
        ;;
      3)
        echo "Compilando 'purecpp_embed'..."
        cd "CMAKE_EMBED"
        ./o.sh 8
        cd ..
        ;;
      4)
        echo "Compilando 'purecpp_extract'..."
        cd "CMAKE_EXTRACT"
        ./o.sh 8
        cd ..
        ;;
      5)
        echo "Compilando 'purecpp_chunks_clean'..."
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 8
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  9)
    echo "====================================================================="
    echo ">>> PYTHON 9 (cp39-cp39)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        cd "CMAKE_LIBS"
        ./o.sh 9
        cd ..
        ;;
      2)
        cd "CMAKE_META"
        ./o.sh 9
        cd ..
        ;;
      3)
        cd "CMAKE_EMBED"
        ./o.sh 9
        cd ..
        ;;
      4)
        cd "CMAKE_EXTRACT"
        ./o.sh 9
        cd ..
        ;;
      5)
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 9
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  10)
    echo "====================================================================="
    echo ">>> PYTHON 10 (cp310-cp310)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        cd "CMAKE_LIBS"
        ./o.sh 10
        cd ..
        ;;
      2)
        cd "CMAKE_META"
        ./o.sh 10
        cd ..
        ;;
      3)
        cd "CMAKE_EMBED"
        ./o.sh 10
        cd ..
        ;;
      4)
        cd "CMAKE_EXTRACT"
        ./o.sh 10
        cd ..
        ;;
      5)
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 10
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  11)
    echo "====================================================================="
    echo ">>> PYTHON 11 (cp311-cp311)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        cd "CMAKE_LIBS"
        ./o.sh 11
        cd ..
        ;;
      2)
        cd "CMAKE_META"
        ./o.sh 11
        cd ..
        ;;
      3)
        cd "CMAKE_EMBED"
        ./o.sh 11
        cd ..
        ;;
      4)
        cd "CMAKE_EXTRACT"
        ./o.sh 11
        cd ..
        ;;
      5)
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 11
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  12)
    echo "====================================================================="
    echo ">>> PYTHON 12 (cp312-cp312)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        cd "CMAKE_LIBS"
        ./o.sh 12
        cd ..
        ;;
      2)
        cd "CMAKE_META"
        ./o.sh 12
        cd ..
        ;;
      3)
        cd "CMAKE_EMBED"
        ./o.sh 12
        cd ..
        ;;
      4)
        cd "CMAKE_EXTRACT"
        ./o.sh 12
        cd ..
        ;;
      5)
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 12
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  13)
    echo "====================================================================="
    echo ">>> PYTHON 13 (cp313-cp313)"
    echo "====================================================================="
    case "$MODULO" in
      1)
        cd "CMAKE_LIBS"
        ./o.sh 13
        cd ..
        ;;
      2)
        cd "CMAKE_META"
        ./o.sh 13
        cd ..
        ;;
      3)
        cd "CMAKE_EMBED"
        ./o.sh 13
        cd ..
        ;;
      4)
        cd "CMAKE_EXTRACT"
        ./o.sh 13
        cd ..
        ;;
      5)
        cd "CMAKE_CHUNKS_CLEAN"
        ./o.sh 13
        cd ..
        ;;
      *)
        echo "Módulo inválido!"
        mostrar_uso
        exit 1
        ;;
    esac
    ;;

  *)
    echo "Versão de Python inválida!"
    mostrar_uso
    exit 1
    ;;
esac

echo "====================================================================="
echo "Concluído: Python=$PYTHON_VERSION, Módulo=$MODULO"
echo "====================================================================="
