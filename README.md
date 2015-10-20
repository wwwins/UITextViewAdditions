UITextViewAdditions
===================

Add UITextView Additions for iOS8/iOS9.

### Example
*Support Storyboard and AutoLayout.*

`#import "UITextView+UITextViewAdditions.h"`
```
[self.textView addTitle:@"這是大標題\n"];
//insert static image
[self.textView addImage:[UIImage imageNamed:@"Toolbox-180"]];
//add line space
[self.textView addLineSpace];
//add title with background color
[self.textView addTitle:@"這是大標題+底色\n" backgroundColor:[UIColor lightGrayColor]];
[self.textView addSubTitle:@"時間:2015/10/19\n地點:民生東路三段\n" backgroundColor:[UIColor lightGrayColor]];
//add body text
[self.textView addBody:@"這是內文一二三 At this instant, while Daggoo, on the summit of the head, was clearing the whip—which had somehow got foul of the great cutting tackles—a sharp cracking noise was heard; and to the unspeakable horror of all, one of the two enormous hooks suspending the head tore out, and with a vast vibration the enormous mass sideways swung, till the drunk ship reeled and shook as if smitten by an iceberg. The one remaining hook, upon which the entire strain now depended, seemed every instant to be on the point of giving way; an event still more likely from the violent motions of the head."];
```
