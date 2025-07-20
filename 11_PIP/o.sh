#!/bin/bash

# Se nenhum parâmetro for fornecido, remove tudo
if [ "$#" -eq 0 ]; then
    echo "Parâmetro inválido. Use 0, 00, 1, 11, 2, 22, 3, 33, 4, 44, 5, 55, 9, 10"
    echo "--------------------------------------------------------------------------"
    echo "0)Removendo apenas os diretórios de purecpp_libs..."
    echo "00) Removendo apenas os diretórios de purecpp_libs e gerando o wheel..."
    echo "000) Removendo apenas os diretórios de purecpp_libs_t..."
    echo "0000) Removendo apenas os diretórios de purecpp_libs_t e gerando o wheel..."
    echo "1)Removendo apenas os diretórios de purecpp_extract..."
    echo "11) Removendo apenas os diretórios de purecpp_extract e gerando o wheel..."
    echo "2)Removendo apenas os diretórios de purecpp_chunks_clean..."
    echo "22) Removendo apenas os diretórios de purecpp_chunks_clean e gerando o wheel..."
    echo "3)Removendo apenas os diretórios de purecpp_chunks_clean2..."
    echo "33) Removendo apenas os diretórios de purecpp_chunks_clean2 e gerando o wheel..."
    echo "4)Removendo apenas os diretórios de purecpp_meta..."
    echo "44) Removendo apenas os diretórios de purecpp_meta e gerando o wheel..."
    echo "5)Removendo apenas os diretórios de purecpp_embed..."
    echo "55) Removendo apenas os diretórios de purecpp_embed e gerando o wheel..."
    echo "9)Removendo todos os diretórios de todos os módulos e gerando todos os wheels..."
    echo "10)Removendo apenas os diretórios de purecpp.. e gerando o wheel..."
    echo "--------------------------------------------------------------------------"
else
    case "$1" in
        0)
            echo "Removendo apenas os diretórios de purecpp_libs..."
            rm -fr purecpp_libs/build purecpp_libs/dist purecpp_libs/purecpp_libs.egg-info purecpp_libs/*dist*
            cd ./purecpp_libs
            ls | cat -A
           
            ;;
        00)
            echo "Removendo apenas os diretórios de purecpp_libs..."
            rm -fr purecpp_libs/build purecpp_libs/dist purecpp_libs/purecpp_libs.egg-info
            rm -rf purecpp_libs/*dist*
            cd ./purecpp_libs
            ls | cat -A
            echo "Criando o de purecpp_libs..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_libs/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_libs/dist/
            cd ..
            ;;
        000)
            echo "Removendo apenas os diretórios de purecpp_libs_t..."
            rm -fr purecpp_libs_t/build purecpp_libs_t/dist 
            rm -fr purecpp_libs_t/purecpp_libs_t.egg-info purecpp_libs_t/purecpp_libs.egg-info
            rm -rf purecpp_libs_t/*dist*
            cd ./purecpp_libs_t
            ls | cat -A
            ;;
        0000)
            echo "Removendo apenas os diretórios de purecpp_libs_t..."
            rm -fr purecpp_libs_t/build purecpp_libs_t/dist 
            rm -fr purecpp_libs_t/purecpp_libs_t.egg-info purecpp_libs_t/purecpp_libs.egg-info
            rm -rf purecpp_libs_t/*dist*
            cd ./purecpp_libs_t
            ls | cat -A
            echo "Criando o de purecpp_libs_t..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_libs_t/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_libs_t/dist/
            cd ..
            ;;
        1)
            echo "Removendo apenas os diretórios de purecpp_extract..."
            rm -fr purecpp_extract/build purecpp_extract/dist purecpp_extract/purecpp_extract.egg-info
            rm -rf purecpp_extract/*dist*            
            ls purecpp_extract
            cd ./purecpp_extract
            ls | cat -A
            ;;
        11)
            echo "Removendo apenas os diretórios de purecpp_extract..."
            rm -fr purecpp_extract/build purecpp_extract/dist purecpp_extract/purecpp_extract.egg-info
            rm -rf purecpp_extract/*dist*            
            ls purecpp_extract
            cd ./purecpp_extract
            ls | cat -A
            echo "Criando o de purecpp_extract..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_extract/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_extract/dist/
            cd ..
            ;;
           
        2)
            echo "Removendo apenas os diretórios de purecpp_chunks_clean..."
            rm -fr purecpp_chunks_clean/build purecpp_chunks_clean/dist purecpp_chunks_clean/purecpp_chunks_clean.egg-info
            rm -rf purecpp_chunks_clean/*dist*            
            ls purecpp_chunks_clean
            cd ./purecpp_chunks_clean
            ls | cat -A
            ;;
        22)
            echo "Removendo apenas os diretórios de purecpp_chunks_clean..."
            rm -fr purecpp_chunks_clean/build purecpp_chunks_clean/dist purecpp_chunks_clean/purecpp_chunks_clean.egg-info
            rm -rf purecpp_chunks_clean/*dist*            
            ls purecpp_chunks_clean
            cd ./purecpp_chunks_clean
            ls | cat -A
            echo "Criando o de purecpp_chunks_clean2..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/ --exclude libtorch_cpu.so 
            rm -f ../../15_PIP_MAIN/purecpp_chunks_clean/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_chunks_clean/dist/
            cd ..
            ;;

        3)
            echo "Removendo apenas os diretórios de purecpp_chunks_clean2..."
            rm -fr purecpp_chunks_clean2/build purecpp_chunks_clean2/dist purecpp_chunks_clean2/purecpp_chunks_clean.egg-info
            rm -rf purecpp_chunks_clean2/*dist*
            ls purecpp_chunks_clean2
            cd ./purecpp_chunks_clean2
            ls | cat -A
            ;;
        33)
            echo "Removendo apenas os diretórios de purecpp_chunks_clean2..."
            rm -fr purecpp_chunks_clean2/build purecpp_chunks_clean2/dist purecpp_chunks_clean2/purecpp_chunks_clean.egg-info
            rm -rf purecpp_chunks_clean2/*dist*
            ls purecpp_chunks_clean2
            cd ./purecpp_chunks_clean2
            ls | cat -A
            echo "Criando o de purecpp_chunks_clean2..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/ --exclude libtorch_cpu.so 
            rm -f ../../15_PIP_MAIN/purecpp_chunks_clean2/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_chunks_clean2/dist/
            cd ..
            ;;

        4)
            echo "Removendo apenas os diretórios de purecpp_meta..."
            rm -fr purecpp_meta/build purecpp_meta/dist purecpp_meta/purecpp_meta.egg-info
            rm -rf purecpp_meta/*dist*
            ls purecpp_meta
            cd ./purecpp_meta 
            ls | cat -A
            ;;
        44)
            echo "Removendo apenas os diretórios de purecpp_meta..."
            rm -fr purecpp_meta/build purecpp_meta/dist purecpp_meta/purecpp_meta.egg-info
            rm -rf purecpp_meta/*dist*
            ls purecpp_meta
            cd ./purecpp_meta
            ls | cat -A
            echo "Criando o de purecpp_meta..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_meta/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_meta/dist/        
            cd ..
            ;;
        5)
            echo "Removendo apenas os diretórios de purecpp_embed..."
            rm -fr purecpp_embed/build purecpp_embed/dist purecpp_embed/purecpp_embed.egg-info purecpp_embed/*dist*
            ls purecpp_embed
            cd ./purecpp_embed
            ls | cat -A
            ;;
        55)
            echo "Removendo apenas os diretórios de purecpp_embed..."
            rm -fr purecpp_embed/build purecpp_embed/dist purecpp_embed/purecpp_embed.egg-info purecpp_embed/*dist*
            ls purecpp_embed
            cd ./purecpp_embed
            ls | cat -A
            echo "Criando o de purecpp_embed..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_embed/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_embed/dist/
            cd ..
            ;;
        9)
            echo "--------------------------------------------------------------------------"
            echo "Removendo apenas os diretórios de purecpp_libs..."
            rm -fr purecpp_libs/build purecpp_libs/dist purecpp_libs/purecpp_libs.egg-info purecpp_libs/*dist*
            cd ./purecpp_libs
            ls | cat -A
            echo "Criando o de purecpp_libs wheel"
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_libs/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_libs/dist/
            cd ..
            echo "--------------------------------------------------------------------------"
            echo "Removendo apenas os diretórios de purecpp_extract..."
            rm -fr purecpp_extract/build purecpp_extract/dist purecpp_extract/purecpp_extract.egg-info purecpp_extract/*dist*
            cd ./purecpp_extract
            ls | cat -A
            echo "Criando o de purecpp_extract..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_extract/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_extract/dist/
            cd ..

            echo "--------------------------------------------------------------------------"
            echo "Removendo apenas os diretórios de purecpp_chunks_clean..."
            rm -fr purecpp_chunks_clean/build purecpp_chunks_clean/dist purecpp_chunks_clean/purecpp_chunks_clean.egg-info purecpp_chunks_clean/*dist*
            cd ./purecpp_chunks_clean
            ls | cat -A
            echo "Criando o de purecpp_chunks_clean..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/  --exclude libtorch_cpu.so 
            rm -f ../../15_PIP_MAIN/purecpp_chunks_clean/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_chunks_clean/dist/
            cd ..

            echo "--------------------------------------------------------------------------"
            echo "Removendo apenas os diretórios de purecpp_embed..."
            rm -fr purecpp_embed/build purecpp_embed/dist purecpp_embed/purecpp_embed.egg-info purecpp_embed/*dist*
            cd ./purecpp_embed
            ls | cat -A
            echo "Criando o de purecpp_embed..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/
            rm -f ../../15_PIP_MAIN/purecpp_embed/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_embed/dist/
            cd ..
            echo "--------------------------------------------------------------------------"

            echo "Removendo apenas os diretórios de purecpp_meta..."
            rm -fr purecpp_meta/build purecpp_meta/dist purecpp_meta/purecpp_meta.egg-info purecpp_meta/*dist*
            cd purecpp_meta
            ls | cat -A
            echo "Criando o de purecpp_meta..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/  --exclude libtorch_cpu.so 
             rm -f ../../15_PIP_MAIN/purecpp_meta/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp_meta/dist/        
            cd ..
            echo "--------------------------------------------------------------------------"
            echo "Removendo apenas os diretórios de purecpp.."
            rm -fr purecpp/build purecpp/dist purecpp/purecpp.egg-info purecpp/*dist*
            cd ./purecpp
            ls | cat -A
            echo "Criando o de purecpp..."
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/ --exclude libtorch_cpu.so 
            rm -f ../../15_PIP_MAIN/purecpp/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp/dist/
            cd ..
            ;;
        10)
            echo "Removendo apenas os diretórios de purecpp.."
            rm -fr purecpp/build purecpp/dist purecpp/purecpp.egg-info
            rm -rf purecpp/*dist*
            ls purecpp
            cd ./purecpp
            ls | cat -A
            echo "Criando o de purecpp..."
            # python -m pip wheel . --no-deps -w dist/
            /opt/python/cp311-cp311/bin/python setup.py bdist_wheel --python-tag cp311
            /opt/python/cp311-cp311/bin/python -m auditwheel repair dist/*.whl -w dist/ --exclude libtorch_cpu.so 
            rm -f ../../15_PIP_MAIN/purecpp/dist/*cp311*.whl
            cp ./dist/*cp311*.whl ../../15_PIP_MAIN/purecpp/dist/
            cd ..
            ;;
        *)
            echo "Parâmetro inválido. Use 0, 00, 1, 11, 2, 22, 3, 33, 4, 44, 5, 55, 6, 7, 8, 9"
            echo "0)Removendo apenas os diretórios de purecpp_libs..."
            echo "00) Removendo apenas os diretórios de purecpp_libs e gerando o wheel..."
            echo "1)Removendo apenas os diretórios de purecpp_extract..."
            echo "11) Removendo apenas os diretórios de purecpp_extract e gerando o wheel..."
            echo "2)Removendo apenas os diretórios de purecpp_chunks_clean..."
            echo "22) Removendo apenas os diretórios de purecpp_chunks_clean e gerando o wheel..."
            echo "3)Removendo apenas os diretórios de purecpp_chunks_clean2..."
            echo "33) Removendo apenas os diretórios de purecpp_chunks_clean2 e gerando o wheel..."
            echo "4)Removendo apenas os diretórios de purecpp_meta..."
            echo "44) Removendo apenas os diretórios de purecpp_meta e gerando o wheel..."
            echo "5)Removendo apenas os diretórios de purecpp_embed..."
            echo "55) Removendo apenas os diretórios de purecpp_embed e gerando o wheel..."
            echo "6)Removendo apenas os diretórios de purecpp_extract/libs..."
            echo "7)Removendo apenas os diretórios de purecpp_chunks_clean/libs..."
            echo "8)Removendo todos os diretórios de todos os módulos..."
            echo "9)Gerando todos os wheels..."
            echo "--------------------------------------------------------------------------"
            ;;
        esac
fi