# DebugBetaReleaseSample
Sample about how to create build configurations for debug, beta and release in your app. It help you avoiding confusions for build configuration at development, send to testers and go up App Store

**This sample was inspired from the tutorial [How To Change Your App Icon at Build Time](https://www.raywenderlich.com/105641/change-app-icon-build-time) on raywenderlich.com**

#### Features
* It create icons accordingly at build time for Debug, Beta and Release configurations
* Along side is build flags preprocessed at build time. For example: you can configure server url at Debug differ from Beta and Release

#### Some screenshots
![debug](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/debug.png)

![beta](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/beta.png)

![pro](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/prod.png)

#### Check flags in code
````swift
#if DEBUG
  let server = "dev"
#elseif BETA
  let server = "beta"
#else
  let server = "prod"
#endif

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    print(server)
  }
}
````
