# Benchmark results

B/W: whether warp=true or false (block)

```
B/W batch     n   k     avg (ms)   stddev     throughput
========================================================
B   1      50000  10      0.239      0.000    797.278MB/s
B   1      50000  50      0.289      0.001    659.722MB/s
B   1      50000 100      0.369      0.001    518.983MB/s
B   1     500000  10      1.886      0.002   1011.503MB/s
B   1     500000  50      1.989      0.002    958.974MB/s
B   1     500000 100      2.219      0.006    859.419MB/s
B   1   20000000  10     96.676      0.044    789.168MB/s
B   1   20000000  50     97.622      0.000    781.524MB/s
B   1   20000000 100     97.848      0.125    779.721MB/s
B   1       2048  10      0.043      0.000    181.467MB/s
B   1       2048  50      0.051      0.000    151.855MB/s
B   1       2048 100      0.068      0.003    114.449MB/s
B   1      32768  10      0.173      0.001    721.765MB/s
B   1      32768  50      0.212      0.001    590.404MB/s
B   1      32768 100      0.296      0.001    421.994MB/s
B   1    8388608  10     40.625      0.029    787.693MB/s
B   1    8388608  50     41.071      0.000    779.146MB/s
B   1    8388608 100     41.230      0.031    776.141MB/s
B  32      50000  10      0.311      0.001  19659.018MB/s
B  32      50000  50      0.369      0.003  16555.270MB/s
B  32      50000 100      0.470      0.001  13029.203MB/s
B  32     500000  10      2.537      0.002  24062.033MB/s
B  32     500000  50      2.622      0.002  23282.936MB/s
B  32     500000 100      2.778      0.001  21983.023MB/s
B  32   20000000  10     98.424      0.000  24805.078MB/s
B  32   20000000  50     98.716      0.000  24731.768MB/s
B  32   20000000 100     98.914      0.000  24682.316MB/s
B  32       2048  10      0.054      0.001   4641.509MB/s
B  32       2048  50      0.064      0.001   4102.786MB/s
B  32       2048 100      0.077      0.000   3560.928MB/s
B  32      32768  10      0.224      0.001  17858.752MB/s
B  32      32768  50      0.276      0.001  14535.563MB/s
B  32      32768 100      0.365      0.000  11011.489MB/s
B  32    8388608  10     41.339      0.000  24770.908MB/s
B  32    8388608  50     41.516      0.011  24665.512MB/s
B  32    8388608 100     41.733      0.019  24537.545MB/s
B  64      50000  10      0.323      0.001  37769.324MB/s
B  64      50000  50      0.388      0.003  31509.564MB/s
B  64      50000 100      0.487      0.002  25162.639MB/s
B  64     500000  10      2.580      0.003  47319.777MB/s
B  64     500000  50      2.729      0.004  44732.664MB/s
B  64     500000 100      2.888      0.004  42277.773MB/s
B  64   20000000  10     99.940      0.000  48857.305MB/s
B  64   20000000  50    102.363      0.031  47701.105MB/s
B  64   20000000 100    102.204      0.031  47775.422MB/s
B  64       2048  10      0.057      0.000   8906.406MB/s
B  64       2048  50      0.072      0.001   7259.257MB/s
B  64       2048 100      0.089      0.001   6182.980MB/s
B  64      32768  10      0.230      0.001  34827.711MB/s
B  64      32768  50      0.293      0.002  27423.529MB/s
B  64      32768 100      0.383      0.001  21017.133MB/s
B  64    8388608  10     41.924      0.016  48850.199MB/s
B  64    8388608  50     43.233      0.120  47372.141MB/s
B  64    8388608 100     43.343      0.000  47252.426MB/s
W   1      50000  10      0.737      0.003    258.443MB/s
W   1      50000  50      0.841      0.002    226.567MB/s
W   1      50000 100      0.888      0.003    215.427MB/s
W   1     500000  10      7.019      0.002    271.742MB/s
W   1     500000  50      7.548      0.003    252.689MB/s
W   1     500000 100      7.749      0.003    246.111MB/s
W   1   20000000  10    370.213      0.177    206.081MB/s
W   1   20000000  50    380.223      0.177    200.656MB/s
W   1   20000000 100    381.620      0.000    199.921MB/s
W   1       2048  10      0.054      0.001    143.929MB/s
W   1       2048  50      0.075      0.001    103.761MB/s
W   1       2048 100      0.109      0.001     71.852MB/s
W   1      32768  10      0.493      0.002    253.295MB/s
W   1      32768  50      0.601      0.002    208.102MB/s
W   1      32768 100      0.646      0.003    193.350MB/s
W   1    8388608  10    155.346      0.000    205.992MB/s
W   1    8388608  50    159.590      0.044    200.514MB/s
W   1    8388608 100    160.266      0.062    199.668MB/s
W  32      50000  10      0.991      0.003   6161.854MB/s
W  32      50000  50      1.084      0.003   5642.713MB/s
W  32      50000 100      1.155      0.001   5304.562MB/s
W  32     500000  10      9.449      0.007   6459.701MB/s
W  32     500000  50      9.807      0.004   6224.981MB/s
W  32     500000 100      9.959      0.004   6130.921MB/s
W  32   20000000  10    375.859      0.177   6495.535MB/s
W  32   20000000  50    386.678      0.000   6313.833MB/s
W  32   20000000 100    389.187      0.125   6273.149MB/s
W  32       2048  10      0.061      0.001   4133.633MB/s
W  32       2048  50      0.086      0.000   3033.714MB/s
W  32       2048 100      0.114      0.000   2399.365MB/s
W  32      32768  10      0.659      0.001   6074.648MB/s
W  32      32768  50      0.744      0.001   5390.538MB/s
W  32      32768 100      0.817      0.002   4926.851MB/s
W  32    8388608  10    157.751      0.062   6491.254MB/s
W  32    8388608  50    162.334      0.000   6308.044MB/s
W  32    8388608 100    163.400      0.044   6266.985MB/s
W  64      50000  10      1.017      0.002  12002.627MB/s
W  64      50000  50      1.094      0.002  11181.283MB/s
W  64      50000 100      1.171      0.002  10465.114MB/s
W  64     500000  10      9.761      0.004  12506.317MB/s
W  64     500000  50      9.946      0.005  12275.842MB/s
W  64     500000 100     10.074      0.000  12122.622MB/s
W  64   20000000  10    389.220      0.125  12545.122MB/s
W  64   20000000  50    392.631      0.000  12436.193MB/s
W  64   20000000 100    392.343      0.000  12445.385MB/s
W  64       2048  10      0.064      0.000   7861.544MB/s
W  64       2048  50      0.096      0.000   5467.239MB/s
W  64       2048 100      0.114      0.000   4804.820MB/s
W  64      32768  10      0.675      0.002  11864.530MB/s
W  64      32768  50      0.748      0.001  10722.604MB/s
W  64      32768 100      0.816      0.001   9864.594MB/s
W  64    8388608  10    161.286      0.000  12697.948MB/s
W  64    8388608  50    163.984      0.044  12489.163MB/s
W  64    8388608 100    165.094      0.000  12405.334MB/s
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

