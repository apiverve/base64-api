from setuptools import setup, find_packages

setup(
    name='apiverve_base64encoderdecoder',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Base64 Encoder/Decoder encodes plain text into Base64 and decodes encoded strings back to readable characters. Submit any string with an encode or decode action to receive the converted output, the original input, and character length.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/base64?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
