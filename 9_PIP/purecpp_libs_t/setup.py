from setuptools import setup, find_packages
# from setuptools import Extension
# import os

# # Compute relative path automatically (one way):
# here = os.path.dirname(__file__)
# src_path = os.path.join(here, "..", "..", "src", "binding_libs.cpp")
# ext_modules = [
#     Extension(
#         "purecpp_libs_t",
#         [src_path],
#         # extra_compile_args=["-O0", "-std=c++23"],
#         # py_limited_api=True,  # Garante compatibilidade binária
#         # define_macros=[("Py_LIMITED_API", "0x030B0000")],  # API do Python 3.11
#     )
# ]
setup(
    name='purecpp_libs_t',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in
    package_data={
        'purecpp_libs_t': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    # ext_modules=ext_modules,
    author='PureAI',
    # python_requires="==3.11.*",
    author_email='contato@pureai.com.br',
    url='https://github.com/pureai-ecosystem/purecpp',
    description='A set of methods for the PureAI framework(purecpp).',
    license = "MIT",
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
)
#------------------------------------------------------------------------------
# from scikitbuild import setup
# from setuptools import find_packages

# setup(
#     name="purecpp_libs_t",
#     version="0.0.12",
#     packages=find_packages(),
#     include_package_data=True,  # Include data files per MANIFEST.in
#     package_data={
#         "purecpp_libs_t": ["*.so"],  # If you have any extra .so to include
#     },
#     cmake_source_dir="/app/CMAKE_LIBS/",
#     author="PureAI",
#     author_email="contato@pureai.com.br",
#     url="https://github.com/pureai-ecosystem/purecpp",
#     description="A set of methods for the PureAI framework (purecpp).",
#     license="MIT",
#     classifiers=[
#         "Programming Language :: Python :: 3",
#         "Operating System :: POSIX :: Linux",
#     ],
#     # Note: We do NOT define `ext_modules` here, because scikit-build
#     # will invoke your CMakeLists.txt to build the extension(s).
# )
