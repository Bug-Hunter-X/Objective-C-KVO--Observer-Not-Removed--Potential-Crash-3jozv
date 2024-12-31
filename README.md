# Objective-C KVO Retain Cycle Bug

This repository demonstrates a common bug in Objective-C when using Key-Value Observing (KVO).  Failure to properly remove observers can lead to retain cycles and crashes. The example shows how to reproduce the issue and offers a solution to avoid retain cycles and ensure proper observer removal.

## Bug Description
The bug is caused by a retain cycle between the observed object and the observer. If the observer is not removed before the observed object is deallocated, the observer keeps the observed object alive, preventing it from being deallocated. This results in a memory leak and a potential crash.

## How to Reproduce
1. Clone the repository.
2. Open the project in Xcode.
3. Run the application.
4. Observe the crash or unexpected behavior.

## Solution
The solution involves ensuring that observers are removed when they are no longer needed. This typically happens when the observer is deallocated or when the observation is no longer required.