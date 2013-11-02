#Introduction

**RAMCollectionViewFlemishBondLayout** was written by **[Rafael Aguilar](https://twitter.com/rais38)** for **[Crows & Dogs](http://www.crowsanddogs.com)**.

`RAMCollectionViewFlemishBondLayout` is a `UICollectionViewLayout` subclass for displaying cells in groups (highlighting one of them) with optional header and footer views. Highlighted cell occupy much of the space and the remaining cells occupy space equally. See the example screenshots for what this looks like.

#Screenshots

<p align="center" >
  <img src="https://raw.github.com/TopicSo/RAMCollectionViewFlemishBondLayout/master/Screenshots/screenshot1.png" alt="Screenshot 1" title="Screenshot 1" height="600">
</p>
<p align="center" >
  <img src="https://raw.github.com/TopicSo/RAMCollectionViewFlemishBondLayout/master/Screenshots/screenshot2.png" alt="Screenshot 2" title="Screenshot 2" height="600">
</p>

#Usage
##Setup Instructions

###Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects.

####Podfile

	pod 'RAMCollectionViewFlemishBondLayout', '~> 1.0.1'

###Manual

Add `RAMCollectionViewFlemishBondLayout` folder to your project.

##Example

	self.collectionViewLayout = [[RAMCollectionViewFlemishBondLayout alloc] init];
    self.collectionView.collectionViewLayout = self.collectionViewLayout;

##Properties

* `numberOfElements`: Number to be grouped cells (Default: 3).
* `highlightedCellWidth`: Width of highlighted cell.
* `highlightedCellHeight`: Height of highlighted cell.

##RAMCollectionViewFlemishBondLayoutDelegate

All are optional.

* `collectionView:layout:highlightedCellDirectionForGroup:atIndexPath:`: Ask the delegate the direction of the highlighted cell on a particular group. Available values: `RAMCollectionViewFlemishBondLayoutGroupDirectionLeft` & `RAMCollectionViewFlemishBondLayoutGroupDirectionRight`.
* `collectionView:layout:estimatedSizeForHeaderInSection:`: Asks the delegate for the size of the header view in the specified section.
* `collectionView:layout:estimatedSizeForFooterInSection:`: Asks the delegate for the size of the footer view in the specified section.

# Tasks List
* Support for more than 1 section
* Sticky header
* Add Item Spacing

# Requirements

Requires iOS 6.0+ and ARC.

# Contributing

Forks, patches and other feedback are welcome. [I just would love to know](mailto:rais38@gmail.com) if you're using it in any project.

# MIT License

    This code is distributed under the terms and conditions of the MIT license.

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
