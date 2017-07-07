# ZoomableUIView

ZoomableUIView is a protocol that any UIView can conform to in order to be able to zoom and pan views without using UIScroll View. Particularly handy for views within UIScrollViews

ZoomableUIView is using **swift3**.
- - -

#![SwiftSpinner Screenshot](https://raw.githubusercontent.com/icanzilb/SwiftSpinner/master/etc/spinner-preview.gif)

## Usage

The simple code to get `ZoomableUIView` running in your own app.

 * In case you installed ZoomableUIView via CocoaPods you need to import it (add this somewhere at the top of your source code file):

```swift
    import ZoomableUIView
```

 * When you want to conform to the protocol:

```swift
     class CustomView: UIView, ZoomableUIView
```

* Or:

```swift
     extension CustomView: ZoomableUIView
```

 * If you want to set the view zoomable:

```swift
    self.setZoomable(true)
```

 * When you want to reset the zoom:

```swift
    self.reset()
```

* Mandatory protocol conformance

Works like UIScrollViewDelegate's viewForZooming. May well be that you want to use self in this case but you may want the current view to handle the zoom recognition and a subview to be zoomed, in that case return the subview in this func

```swift
    func viewForZooming() -> UIView
```

Set zooming options such as min and max zoom
```swift
   func optionsForZooming() -> ZoomableViewOptions
```

## Requirements

UIKit must be imported. If you are using ZoomableUIView in an App Extension, you must add `EXTENSION` to your `Other Swift Flags` Build Settings.

## Installation

`ZoomableUIView` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
    pod "ZoomableUIView"
```

In case you don’t want to use CocoaPods - just copy the files **ZoomableUIView/ZoomableUIView.swift** & **ZoomableUIView/CGAffineTransform.swift** to your Xcode project.

Credit
========

Author: **James Coughlan**

## License

`**ZoomableUIView**` is available under the MIT license. See the LICENSE file for more info.
