from setuptools import setup, find_packages

setup(
    name='apiverve_base64encoder/decoder',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Base64 Encoder/Decoder is a simple tool for encoding and decoding Base64 strings. It supports both encoding text to Base64 and decoding Base64 back to text.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
