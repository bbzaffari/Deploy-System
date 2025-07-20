#!/bin/bash

for PYBIN in /opt/python/cp3*-cp3*/bin; do
    "${PYBIN}/pip" install --upgrade pip setuptools wheel auditwheel build conan cmake requests twine pybind11
done