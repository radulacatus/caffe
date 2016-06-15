# Windows Caffe

This branch of Caffe will be used for my personal experiments. For the time being it's configured for CPU_ONLY build using local third party dependencies (instead of nuget packages). See setup details below.

## Windows Setup

1. Download repository.
2. Download 3rd party dependencies from [here](https://drive.google.com/open?id=0By--rxQnz9HfRVBxZFh6ZXNvc0U)
3. Unzip the 3rdparty.zip archive and in `windows/CommonSettings.props` replace the `DependenciesDir` property with the path to your 3rdparty folder.
4. Install Opencv 2.4.9 (I use 2.4.13)
5. Install [Boost 1.56](http://sourceforge.net/projects/boost/files/boost-binaries/1.56.0/boost_1_56_0-msvc-12.0-64.exe/download)
6. Open windows\Caffe.sln and build the solution

### Python
Download Miniconda 2.7 64-bit Windows installer [from Miniconda website] (http://conda.pydata.org/miniconda.html).
Install for all users and add Python to PATH (through installer).

Run the following commands from elevated command prompt:

```
conda install --yes numpy scipy matplotlib scikit-image pip
pip install protobuf
```

#### Remarks
After you have built solution with Python support, in order to use it you have to either:  
* set `PythonPath` environment variable to point to `<caffe_root>\Build\x64\Release\pycaffe`, or
* copy folder `<caffe_root>\Build\x64\Release\pycaffe\caffe` under `<python_root>\lib\site-packages`.

Also, you should add your `3rdparty\bin` folder to the PATH environment variable.

## Other resources
The reads that proved useful for installing & configuring caffe on windows:

1. [initialneil's repo](https://github.com/initialneil/caffe/tree/windows) his [step by step guide](https://initialneil.wordpress.com/2015/01/11/build-caffe-in-windows-with-visual-studio-2013-cuda-6-5-opencv-2-4-9/)
2. [happynear's repo](https://github.com/happynear/caffe-windows)
3. if you only need the binary files i would recommend getting them from [this repo](https://github.com/drakh/caffe-win-python-anaconda)

## Further Details

Refer to the BVLC/caffe master branch README for all other details such as license, citation, and so on.
