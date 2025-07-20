from setuptools import setup, find_packages

setup(
    name='purecpp_extract',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in 
    package_data={
        'purecpp_extract': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    author='PureAI',
    author_email='contato@pureai.com.br',
    description='High-performance data extractor for RAG, developed in C++. This package is a part of the PureCPP ecosystem.',
    url='https://github.com/pureai-ecosystem/purecpp',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
    license = "MIT",
    # python_requires='>=3.10, <3.11',
    install_requires=[
        'purecpp_libs',
    ],
)