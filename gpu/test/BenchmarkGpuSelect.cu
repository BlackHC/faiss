
/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the CC-by-NC license found in the
 * LICENSE file in the root directory of this source tree.
 */

// Copyright 2004-present Facebook. All Rights Reserved.

#include "../utils/DeviceUtils.h"
#include "../utils/BlockSelectKernel.cuh"
#include "../utils/WarpSelectKernel.cuh"
#include "../utils/HostTensor.cuh"
#include "../utils/Timer.h"
#include "../utils/DeviceTensor.cuh"
#include "../test/TestUtils.h"
#include <algorithm>
#include <gtest/gtest.h>
#include <sstream>
#include <unordered_map>
#include <vector>
#include <cuda_profiler_api.h>
#include "/usr/local/google/home/blackhc/git/benchmark/src/stat.h"

int main(int argc, char** argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

benchmark::Stat1_f testForSize(int batch_size, int n, int k, bool dir, bool warp) {
  benchmark::Stat1_f stats;
  faiss::gpu::CpuTimer timer;

  std::vector<float> v = faiss::gpu::randVecs(batch_size, n);
  faiss::gpu::HostTensor<float, 2, true> hostVal({batch_size, n});

  for (int r = 0; r < batch_size; ++r) {
    for (int c = 0; c < n; ++c) {
      hostVal[r][c] = v[r * n + c];
    }
  }

  // Select top-k on GPU
  faiss::gpu::DeviceTensor<float, 2, true> gpuVal(hostVal, 0);
  faiss::gpu::DeviceTensor<float, 2, true> gpuOutVal({batch_size, k});
  faiss::gpu::DeviceTensor<int, 2, true> gpuOutInd({batch_size, k});

  for (int i = 0 ; i < 20 ; i++) {
    cudaDeviceSynchronize();
    float start_time = timer.elapsedMilliseconds();
    if (warp) {
      faiss::gpu::runWarpSelect(gpuVal, gpuOutVal, gpuOutInd, dir, k, 0);
    } else {
      faiss::gpu::runBlockSelect(gpuVal, gpuOutVal, gpuOutInd, dir, k, 0);
    }
    cudaDeviceSynchronize();

    float end_time = timer.elapsedMilliseconds();
    float delta_time = end_time - start_time;

    // Allow one burn-in iteration.
    if (i > 0) {
      stats += benchmark::Stat1_f(delta_time);
    }
  }

  return stats;
}

TEST(TestGpuSelect, test) {
  faiss::gpu::CpuTimer timer;

  printf("B/W batch     n   k     avg (ms)   stddev     throughput\n");
  printf("========================================================\n");
  const int batch_sizes[] = {1, 32, 64};
  const int ns[] = {50000, 500000, 20000000, 2048,32768, 8388608};
  const int ks[] = {10,50,100};
  for (int warp = 0 ; warp <= 1 ; warp++) {
    for (int batch_size : batch_sizes) {
      for(int n : ns) {
        for (int k : ks) {
          bool use_warp = warp == 1;
          auto timings = testForSize(batch_size, n, k, false, use_warp);
          float throughputMBS = (batch_size * n * 4LL + batch_size * k * 8) / 1024 / double(timings.Mean()) * 1000 / 1024;
          printf("%1s %3i %10i %3i %10.3f %10.3f %10.3fMB/s\n", use_warp ? "W" : "B", batch_size, n, k, timings.Mean(), timings.StdDev(), throughputMBS);
        }
      }
    }
  }
}

#if 0
// General test
TEST(TestGpuSelect, test) {
  for (int i = 0; i < 10; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 30000);
    int k = std::min(n, faiss::gpu::randVal(1, 1024));
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, k, dir, false);
  }
}

// Test for k = 1
TEST(TestGpuSelect, test1) {
  for (int i = 0; i < 5; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 30000);
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, 1, dir, false);
  }
}

// Test for where k = #n exactly (we are returning all the values,
// just sorted)
TEST(TestGpuSelect, testExact) {
  for (int i = 0; i < 5; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 1024);
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, n, dir, false);
  }
}

// General test
TEST(TestGpuSelect, testWarp) {
  for (int i = 0; i < 10; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 30000);
    int k = std::min(n, faiss::gpu::randVal(1, 1024));
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, k, dir, true);
  }
}

// Test for k = 1
TEST(TestGpuSelect, test1Warp) {
  for (int i = 0; i < 5; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 30000);
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, 1, dir, true);
  }
}

// Test for where k = #n exactly (we are returning all the values,
// just sorted)
TEST(TestGpuSelect, testExactWarp) {
  for (int i = 0; i < 5; ++i) {
    int batch_size = faiss::gpu::randVal(10, 100);
    int n = faiss::gpu::randVal(1, 1024);
    bool dir = faiss::gpu::randBool();

    testForSize(batch_size, n, n, dir, true);
  }
}
#endif
