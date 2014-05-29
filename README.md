UITextViewAdditions
===================

Fixed UITextView issues in iOS6 &amp; 7

### Example
`#import "UITextView+UITextViewAdditions.h"`
```
NSString *content = @"blah blah blah blah...";
  
UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
[self.view addSubview:textView];

[textView styleTextViewWithShowingAll:content lineSpacing:25.0f];
```
