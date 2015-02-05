# ABInfiniteScrollView
Swift infinite scroll view


Infinite scroll view (UIScrollView subclass) [PAGING ONLY ATM]

Usage:

1. initialize inside your ViewDidLoad function:

scrollView = ABInfiniteScrollView(frame: self.view.bounds)
scrollView?.infinteScrollDelegate = self
self.view.addSubview(scrollView!)

2. Add ABInfiniteScrollViewDelegate to your view controller

3. Implement delegate methods

func infiniteScrollViewDidScroll(direction: ABInfiniteScrollDirection)

* method fired when scrolls
* direction (left/right)

--

func infiniteScrollViewNewView(frame:CGRect, pageFrame:CGRect) -> UIView

* view is allocated as you scroll, customized here
* ideal for calenders etc
