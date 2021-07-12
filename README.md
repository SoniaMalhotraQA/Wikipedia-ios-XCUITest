
## Building and Running

```bash
git clone https://github.com/SoniaMalhotraQA/Wikipedia-ios-XCUITest/

```

In the directory, run `./scripts/setup`.  Note: going to `scripts` directory and running `setup` will not work due to relative paths.

Running `scripts/setup` will setup your computer to build and run the app. The script assumes you have Xcode installed already. It will install [homebrew](https://brew.sh) and [ClangFormat](https://clang.llvm.org/docs/ClangFormat.html). It will also create a pre-commit hook that uses ClangFormat for linting.

After running `scripts/setup`, you should be able to run below commands to execute test

```bash
cd Wikipedia-ios-XCUITest
xcodebuild -project Wikipedia.xcodeproj -scheme Wikipedia -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max,OS=14.5' test

Test Suite 'WikipediaXCUITests' passed at 2021-07-11 22:02:48.593.
	 Executed 4 tests, with 0 failures (0 unexpected) in 42.543 (42.545) seconds
Test Suite 'WikipediaXCUITests.xctest' passed at 2021-07-11 22:02:48.594.
	 Executed 4 tests, with 0 failures (0 unexpected) in 42.543 (42.547) seconds
Test Suite 'All tests' passed at 2021-07-11 22:02:48.594.
	 Executed 4 tests, with 0 failures (0 unexpected) in 42.543 (42.548) seconds
2021-07-11 22:02:48.868 xcodebuild[67095:637892] [MT] IDETestOperationsObserverDebug: 57.147 elapsed -- Testing started completed.
2021-07-11 22:02:48.868 xcodebuild[67095:637892] [MT] IDETestOperationsObserverDebug: 0.000 sec, +0.000 sec -- start
2021-07-11 22:02:48.868 xcodebuild[67095:637892] [MT] IDETestOperationsObserverDebug: 57.147 sec, +57.147 sec -- end

Test session results, code coverage, and logs:
	Library/Developer/Xcode/DerivedData/Wikipedia-coafzvcpapoexuadufdahqywjqwu/Logs/Test/Test-Wikipedia-2021.07.11_9-59-07-+0200.xcresult

** TEST SUCCEEDED **
```
### Required Dependencies
If you'd rather install the development prerequisites yourself without our script:

* [**Xcode**](https://itunes.apple.com/us/app/xcode/id497799835) - The easiest way to get Xcode is from the [App Store](https://itunes.apple.com/us/app/xcode/id497799835?mt=12), but you can also download it from [developer.apple.com](https://developer.apple.com/) if you have an Apple ID registered with an Apple Developer account.
* [**ClangFormat**](https://clang.llvm.org/docs/ClangFormat.html) - We use this for linting.
