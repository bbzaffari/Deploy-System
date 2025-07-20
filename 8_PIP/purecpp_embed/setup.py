from setuptools import setup, find_packages

setup(
    name='purecpp_embed',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in
    package_data={
        'purecpp_embed': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    author='PureAI',
    author_email='contato@pureai.com.br',
    description='C++ embeddings generator for RAG and other structures. This package is a part of the PureCPP ecosystem.',
    url='https://github.com/pureai-ecosystem/purecpp',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
    license = "MIT",
    install_requires=[
        'purecpp_libs',
    ],
)