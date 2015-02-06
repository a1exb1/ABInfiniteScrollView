# ABInfiniteScrollView
Swift infinite scroll view (SWIFT)


Infinite scroll view (UIScrollView subclass) [PAGING ONLY ATM]


Usage:

Initialize inside your ViewDidLoad function:

scrollView = ABInfiniteScrollView(frame: self.view.bounds)

scrollView?.infinteScrollDelegate = self

self.view.addSubview(scrollView!)

--

Add ABInfiniteScrollViewDelegate to your view controller

--

Implement delegate methods


func infiniteScrollViewDidScroll(direction: ABInfiniteScrollDirection)

* method fired when scrolls
* direction (left/right)

--

func infiniteScrollViewNewView(frame:CGRect, pageFrame:CGRect) -> UIView

* view is allocated as you scroll, customized here
* ideal for calenders etc
