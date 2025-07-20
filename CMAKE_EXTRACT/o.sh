# #!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "Parâmetro inválido. Use 8, 9, 10, 11, 12, 13"
    echo "--------------------------------------------------------------------------"
    echo "8  - cp38-cp38"
    echo "9  - cp39-cp39"
    echo "10 - cp310-cp310"
    echo "11 - cp311-cp311"
    echo "12 - cp312-cp312"
    echo "13 - cp313-cp313"
    echo "--------------------------------------------------------------------------"
else
    set -e
    rm -fr ./build ./conan.lock
    case "$1" in
        8)
            set -e
            echo "PATH: $PATH"
            (
            # # Este parêntese abre um subshell
            export PATH="/opt/python/cp38-cp38/bin:$PATH"
            echo "PATH: $PATH"
            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp38-cp38/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../8_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-38-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-38-x86_64-linux-gnu.so ../8_PIP/purecpp_extract/purecpp_extract
            rm -f ../8_PIP/purecpp/purecpp/purecpp_extract.cpython-38-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-38-x86_64-linux-gnu.so ../8_PIP/purecpp/purecpp
            echo "PATH: $PATH"
            )
            ;;
        9)
            set -e

            (
            # Este parêntese abre um subshell
            export PATH="/opt/python/cp39-cp39/bin:$PATH"

            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp39-cp39/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../9_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-39-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-39-x86_64-linux-gnu.so ../9_PIP/purecpp_extract/purecpp_extract
            rm -f ../9_PIP/purecpp/purecpp/purecpp_extract.cpython-39-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-39-x86_64-linux-gnu.so ../9_PIP/purecpp/purecpp
            echo "PATH: $PATH"
            )
            ;;
        10)
            set -e

            (
            # Este parêntese abre um subshell
            export PATH="/opt/python/cp310-cp310/bin:$PATH"

            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp310-cp310/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../10_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-310-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-310-x86_64-linux-gnu.so ../10_PIP/purecpp_extract/purecpp_extract
            em -f ../10_PIP/purecpp/purecpp/purecpp_extract.cpython-310-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-310-x86_64-linux-gnu.so ../10_PIP/purecpp/purecpp
            echo "PATH: $PATH"
            )
            ;;
        11)
            set -e

            (
            # Este parêntese abre um subshell
            export PATH="/opt/python/cp311-cp311/bin:$PATH"

            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp311-cp311/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../11_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-311-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-311-x86_64-linux-gnu.so ../11_PIP/purecpp_extract/purecpp_extract
            rm -f ../11_PIP/purecpp/purecpp/purecpp_extract.cpython-311-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-311-x86_64-linux-gnu.so ../11_PIP/purecpp/purecpp
            echo "PATH: $PATH"
            )
            ;;
        12)     
            set -e

            (
            # Este parêntese abre um subshell
            export PATH="/opt/python/cp312-cp312/bin:$PATH"

            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp312-cp312/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../12_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-312-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-312-x86_64-linux-gnu.so ../12_PIP/purecpp_extract/purecpp_extract
            rm -f ../12_PIP/purecpp/purecpp/purecpp_extract.cpython-312-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-312-x86_64-linux-gnu.so ../12_PIP/purecpp/purecpp
            echo "PATH: $PATH"
            )
            ;;
        13)
            set -e

            (
            # Este parêntese abre um subshell
            export PATH="/opt/python/cp313-cp313/bin:$PATH"

            # Aqui dentro do subshell, conan e cmake irão apontar para o /opt/python/cp313-cp313/bin
            conan install . --build=missing
            conan lock create conanfile.py --build=missing
            conan install . --build=missing

            cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW \
                    -DBUILD_SHARED_LIBS=OFF \
                    -D_GLIBCXX_USE_CXX11_ABI=1 \
                    -DSPM_USE_BUILTIN_PROTOBUF=OFF \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DCMAKE_TOOLCHAIN_FILE=generators/conan_toolchain.cmake \
                    -S "$(pwd)" \
                    -B "$(pwd)/build/Release" \
                    -G "Unix Makefiles"

            cmake --build "$(pwd)/build/Release" --parallel "$(nproc)"
            rm -f ../13_PIP/purecpp_extract/purecpp_extract/purecpp_extract.cpython-313-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-313-x86_64-linux-gnu.so ../13_PIP/purecpp_extract/purecpp_extract
            rm -f ../13_PIP/purecpp/purecpp/purecpp_extract.cpython-313-x86_64-linux-gnu.so
            cp ./build/Release/purecpp_extract.cpython-313-x86_64-linux-gnu.so ../13_PIP/purecpp/purecpp
            echo "PATH durante o subshell: $PATH"
            )
            ;;
    esac
fi
# #-----------------------------------------------------------------------------------------------------------------------------------
