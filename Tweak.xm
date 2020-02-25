@interface CSQuickActionsButton : UIView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook CSQuickActionsButton
-(id)initWithFrame:(CGRect)frame {
	id origFrame = %orig(frame);
	CSQuickActionsButton *me = self;
	UIView *subV = [me.subviews firstObject];
	subV.hidden = true;
	return origFrame;
}
%end