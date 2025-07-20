from setuptools import setup, find_packages
#, Extension

# ext_modules = [
#     Extension(
#         # Nome do módulo como Python verá ao importar: import purecpp_libs.my_module
#         name="purecpp_libs.my_module",
#         # Lista de arquivos .cpp/.c que serão compilados
#         sources=["src/my_module.cpp"],
#         # Caso precise de includes extras, flags, libs, você configura aqui:
#         include_dirs=[],
#         library_dirs=[],
#         extra_compile_args=["-O3", "-std=c++14"],
#         extra_link_args=[],
#         # Se quiser usar a API limitada (abi3), adiciona py_limited_api=True e define macros
#         # define_macros=[("Py_LIMITED_API", "0x03070000")],
#     )
# ]
setup(
    name='purecpp_libs',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in
    package_data={
        'purecpp_libs': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    author='PureAI',
    author_email='contato@pureai.com.br',
    url='https://github.com/pureai-ecosystem/purecpp',
    description='A set of methods for the PureAI framework(purecpp).',
    license = "MIT",
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
)