from setuptools import setup, find_packages

setup(
    name='purecpp_imports_test',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in
    package_data={
        'purecpp_imports_test': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    author='PureAI',
    author_email='contato@pureai.com.br',
    url='https://github.com/pureai-ecosystem/purecpp',
    description='This package is a part of the PureCPP ecosyste.',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
    license = "MIT",
    install_requires=[
        'purecpp_libs',
        'auditwheel',
        'build',
        'requests',
        'wheel',
        'pybind11',
        'setuptools',
        'purecpp_extract',
        'purecpp_embed',
        'purecpp_meta',
        'purecpp_chunks_clean',
    ],
)