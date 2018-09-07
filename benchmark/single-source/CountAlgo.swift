//===--- CountAlgo.swift --------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import TestsUtils

public let CountAlgo = BenchmarkInfo(
  name: "CountAlgo",
  runFunction: run_CountAlgo,
  tags: [.validation, .api])

@inline(never)
public func run_CountAlgo(_ N: Int) {
  for _ in 1...N {
    CheckResults(0..<10_000.count(where: { $0 & 7 == 0 }) == 1250)
  }
}
