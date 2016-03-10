# DebugBetaReleaseSample
Sample about how to create build configurations for debug, beta and release in your app. It help you avoiding confusions for build configuration at development, send to testers and go up App Store

**This sample was inspired from the tutorial [How To Change Your App Icon at Build Time](https://www.raywenderlich.com/105641/change-app-icon-build-time) on raywenderlich.com**

### Features
* It create icons accordingly at build time for Debug, Beta and Release configurations
* Along side is build flags preprocessed at build time. For example: you can configure server url at Debug differ from Beta and Release

### Configurations

1. **Adding Beta configuration, you can add more as you like**
![add_configuration](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/add_configuration.png)

2. **Adding Swift flags**
![config_swift_flags](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/config_swift_flags.png)

3. **Choosing configuration when run, profile or archive**
![choose_configuration_when_run](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/choose_configuration_when_run.png)

### Screenshots
![debug](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/debug.png)

![beta](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/beta.png)

![pro](https://raw.githubusercontent.com/quangtqag/DebugBetaReleaseSample/master/Screenshots/prod.png)

### Check flags in code
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
