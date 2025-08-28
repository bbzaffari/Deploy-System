# PureCPP 
This is an old deploy implementation 
for an open-source modular RAG (Retrieval-Augmented Generation) system developed by PureAI, to which I contributed during my internship, integrating C++ and Python, deploying to PyPI, and optimizing for high-performance vector processing and queries.
It also includes careful memory control strategies to maximize performance, culminating in the development of a functional and scalable vector database engine.
In addition to its modular architecture, the project features orchestration and optimization through build and deploy pipeline scripts, reducing processes that originally took ~3 hours down to just 30 minutes.

---


> **Note:**  
> As this project is extensive and contains many modular components, this documentation will initially focus on explaining the parts I developed in the `ChunkDefault` and `ChunkQuery` modules, as well as their integration with the `VectorDatabase`.  
> 
> Later sections will extend the documentation to cover:
> - the C++ <-> Python bindings,
> - the modular CMake architecture,
> - and the automated PIP build and deployment system.

---
