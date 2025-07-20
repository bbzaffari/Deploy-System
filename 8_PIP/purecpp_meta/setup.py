from setuptools import setup, find_packages

setup(
    name='purecpp_meta',
    version='0.0.12',
    packages=find_packages(),
    include_package_data=True,  # Informa para incluir os dados especificados no MANIFEST.in
    package_data={
        'purecpp_meta': ['*.so'],  # Inclui todos os arquivos .so dentro do pacote
    },
    author='PureAI',
    author_email='contato@pureai.com.br',
    url='https://github.com/pureai-ecosystem/purecpp',
    description='Metadata capture in chunks for hybrid search. This package is a part of the PureCPP ecosystem. Beta version.',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
    ],
    license = "MIT",
    install_requires=[
        'purecpp_libs',
        'purecpp_chunks_clean',
        'auditwheel',
        'build',
        'requests',
        'wheel',
        'pybind11',
        'setuptools',
    ],
)