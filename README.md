# Benchmark results

B/W: whether warp=true or false (block)

```
B/W batch     n   k     avg (ms)   stddev     throughput
========================================================
B   1      50000  10      0.245      0.001    777.035MB/s
B   1      50000  50      0.290      0.004    656.840MB/s
B   1      50000 100      0.371      0.001    515.891MB/s
B   1     500000  10      1.897      0.002   1005.142MB/s
B   1     500000  50      2.000      0.001    953.409MB/s
B   1     500000 100      2.147      0.001    888.198MB/s
B   1    2000000  10      9.727      0.007    784.305MB/s
B   1    2000000  50      9.926      0.003    768.591MB/s
B   1    2000000 100     10.114      0.005    754.355MB/s
B   1       2048  10      0.043      0.000    179.869MB/s
B   1       2048  50      0.048      0.005    163.922MB/s
B   1       2048 100      0.063      0.001    124.292MB/s
B   1      32768  10      0.170      0.001    735.366MB/s
B   1      32768  50      0.210      0.001    596.071MB/s
B   1      32768 100      0.300      0.003    416.625MB/s
B   1    8388608  10     40.537      0.029    789.393MB/s
B   1    8388608  50     41.118      0.022    778.257MB/s
B   1    8388608 100     41.309      0.000    774.652MB/s
B  32      50000  10      0.311      0.001  19639.213MB/s
B  32      50000  50      0.366      0.002  16699.939MB/s
B  32      50000 100      0.473      0.001  12957.379MB/s
B  32     500000  10      2.541      0.002  24022.180MB/s
B  32     500000  50      2.625      0.003  23254.117MB/s
B  32     500000 100      2.787      0.002  21905.967MB/s
B  32    2000000  10      9.923      0.005  24603.549MB/s
B  32    2000000  50     10.047      0.006  24300.357MB/s
B  32    2000000 100     10.219      0.005  23892.625MB/s
B  32       2048  10      0.054      0.002   4695.644MB/s
B  32       2048  50      0.064      0.001   4121.242MB/s
B  32       2048 100      0.076      0.000   3587.619MB/s
B  32      32768  10      0.226      0.005  17726.660MB/s
B  32      32768  50      0.275      0.001  14565.805MB/s
B  32      32768 100      0.366      0.003  10983.384MB/s
B  32    8388608  10     41.349      0.019  24765.045MB/s
B  32    8388608  50     41.513      0.000  24666.961MB/s
B  32    8388608 100     41.737      0.000  24535.355MB/s
B  64      50000  10      0.323      0.001  37762.617MB/s
B  64      50000  50      0.388      0.002  31519.410MB/s
B  64      50000 100      0.487      0.001  25185.000MB/s
B  64     500000  10      2.579      0.003  47332.508MB/s
B  64     500000  50      2.732      0.003  44690.797MB/s
B  64     500000 100      2.889      0.004  42274.246MB/s
B  64    2000000  10     10.095      0.005  48368.078MB/s
B  64    2000000  50     10.429      0.006  46819.684MB/s
B  64    2000000 100     10.593      0.008  46101.199MB/s
B  64       2048  10      0.057      0.001   8839.300MB/s
B  64       2048  50      0.067      0.000   7833.268MB/s
B  64       2048 100      0.085      0.001   6452.317MB/s
B  64      32768  10      0.228      0.002  35071.730MB/s
B  64      32768  50      0.291      0.002  27612.441MB/s
B  64      32768 100      0.383      0.002  21010.348MB/s
B  64    8388608  10     42.135      0.114  48605.527MB/s
B  64    8388608  50     43.286      0.011  47313.750MB/s
B  64    8388608 100     43.350      0.016  47244.418MB/s
W   1      50000  10      0.731      0.001    260.559MB/s
W   1      50000  50      0.839      0.002    226.935MB/s
W   1      50000 100      0.885      0.002    216.378MB/s
W   1     500000  10      7.046      0.013    270.691MB/s
W   1     500000  50      7.278      0.002    262.062MB/s
W   1     500000 100      7.454      0.000    255.877MB/s
W   1    2000000  10     37.108      0.011    205.588MB/s
W   1    2000000  50     38.207      0.000    199.675MB/s
W   1    2000000 100     38.463      0.000    198.370MB/s
W   1       2048  10      0.054      0.001    144.902MB/s
W   1       2048  50      0.075      0.001    103.478MB/s
W   1       2048 100      0.109      0.001     71.620MB/s
W   1      32768  10      0.493      0.001    253.693MB/s
W   1      32768  50      0.600      0.001    208.274MB/s
W   1      32768 100      0.648      0.002    192.804MB/s
W   1    8388608  10    155.384      0.062    205.941MB/s
W   1    8388608  50    159.586      0.044    200.519MB/s
W   1    8388608 100    160.290      0.000    199.639MB/s
W  32      50000  10      0.991      0.003   6159.080MB/s
W  32      50000  50      1.084      0.001   5640.969MB/s
W  32      50000 100      1.156      0.002   5301.199MB/s
W  32     500000  10      9.453      0.006   6456.575MB/s
W  32     500000  50      9.812      0.005   6221.720MB/s
W  32     500000 100      9.961      0.003   6129.644MB/s
W  32    2000000  10     37.647      0.011   6485.021MB/s
W  32    2000000  50     38.827      0.000   6288.248MB/s
W  32    2000000 100     39.167      0.000   6233.954MB/s
W  32       2048  10      0.060      0.000   4218.218MB/s
W  32       2048  50      0.086      0.000   3037.757MB/s
W  32       2048 100      0.114      0.000   2402.070MB/s
W  32      32768  10      0.659      0.002   6069.812MB/s
W  32      32768  50      0.741      0.001   5413.803MB/s
W  32      32768 100      0.815      0.001   4937.431MB/s
W  32    8388608  10    157.775      0.088   6490.267MB/s
W  32    8388608  50    162.252      0.000   6311.249MB/s
W  32    8388608 100    163.444      0.044   6265.292MB/s
W  64      50000  10      1.017      0.003  12002.201MB/s
W  64      50000  50      1.094      0.002  11184.251MB/s
W  64      50000 100      1.170      0.002  10478.907MB/s
W  64     500000  10      9.771      0.006  12493.707MB/s
W  64     500000  50      9.953      0.005  12267.010MB/s
W  64     500000 100     10.076      0.006  12119.925MB/s
W  64    2000000  10     38.875      0.016  12560.415MB/s
W  64    2000000  50     39.355      0.019  12407.642MB/s
W  64    2000000 100     39.556      0.011  12345.357MB/s
W  64       2048  10      0.064      0.000   7914.562MB/s
W  64       2048  50      0.102      0.001   5124.659MB/s
W  64       2048 100      0.119      0.004   4601.984MB/s
W  64      32768  10      0.684      0.001  11705.661MB/s
W  64      32768  50      0.751      0.001  10679.367MB/s
W  64      32768 100      0.822      0.001   9788.059MB/s
W  64    8388608  10    162.793      0.000  12580.441MB/s
W  64    8388608  50    164.531      0.062  12447.671MB/s
W  64    8388608 100    165.093      0.044  12405.462MB/s
```

# Faiss

Faiss is a library for efficient similarity search and clustering of dense vectors. It contains algorithms that search in sets of vectors of any size, up to ones that possibly do not fit in RAM. It also contains supporting code for evaluation and parameter tuning. Faiss is written in C++ with complete wrappers for Python/numpy. Some of the most useful algorithms are implemented on the GPU. It is developed by [Facebook AI Research](https://research.fb.com/category/facebook-ai-research-fair/).

## Introduction

Faiss contains several methods for similarity search. It assumes that the instances are represented as vectors and are identified by an integer, and that the vectors can be compared with L2 distances or dot products. Vectors that are similar to a query vector are those that have the lowest L2 distance or the highest dot product with the query vector. It also supports cosine similarity, since this is a dot product on normalized vectors.

Most of the methods, like those based on binary vectors and compact quantization codes, solely use a compressed representation of the vectors and do not require to keep the original vectors. This generally comes at the cost of a less precise search but these methods can scale to billions of vectors in main memory on a single server. 

The GPU implementation can accept input from either CPU or GPU memory. On a server with GPUs, the GPU indexes can be used a drop-in replacement for the CPU indexes (e.g., replace `IndexFlatL2` with `GpuIndexFlatL2`) and copies to/from GPU memory are handled automatically. Results will be faster however if both input and output remain resident on the GPU. Both single and multi-GPU usage is supported.

## Building 

The library is mostly implemented in C++, with optional GPU support provided via CUDA, and an optional Python interface. The CPU version requires a BLAS library. It compiles with a Makefile and can be packaged in a docker image. See [INSTALL](INSTALL) for details.

## How Faiss works

Faiss is built around an index type that stores a set of vectors, and provides a function to search in them with L2 and/or dot product vector comparison. Some index types are simple baselines, such as exact search. Most of the available indexing structures correspond to various trade-offs with respect to

- search time
- search quality
- memory used per index vector 
- training time
- need for external data for unsupervised training

The optional GPU implementation provides what is likely (as of March 2017) the fastest exact and approximate (compressed-domain) nearest neighbor search implementation for high-dimensional vectors, fastest Lloyd's k-means, and fastest small k-selection algorithm known. [The implementation is detailed here](https://arxiv.org/abs/1702.08734).

## Full documentation of Faiss

The following are entry points for documentation: 

- the full documentation, including a [tutorial](https://github.com/facebookresearch/faiss/wiki/Getting-started-tutorial), a [FAQ](https://github.com/facebookresearch/faiss/wiki/FAQ) and a [troubleshooting section](https://github.com/facebookresearch/faiss/wiki/Troubleshooting) can be found on the [wiki page](http://github.com/facebookresearch/faiss/wiki)
- the [doxygen documentation](http://rawgithub.com/facebookresearch/faiss/master/docs/html/annotated.html) gives per-class information
- to reproduce results from our research papers, [Polysemous codes](https://arxiv.org/abs/1609.01882) and [Billion-scale similarity search with GPUs](https://arxiv.org/abs/1702.08734), refer to the [benchmarks README](benchs/README.md).


## Join the Faiss community

We monitor the [issues page](http://github.com/facebookresearch/faiss/issues) of the repository. You can report bugs, ask questions, etc.

## License

Faiss is licenced under CC-by-NC, see the LICENSE file for details. This license may be relaxed to BSD in the future.

