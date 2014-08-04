// 25 july 2014

#import "objc_darwin.h"
#import "_cgo_export.h"
#import <Cocoa/Cocoa.h>

#define toNSTabView(x) ((NSTabView *) (x))
#define toNSView(x) ((NSView *) (x))

id newTab(void)
{
	NSTabView *t;

	t = [[NSTabView alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
	setStandardControlFont((id) t);		// safe; same selector provided by NSTabView
	return (id) t;
}

void tabAppend(id t, char *name, id view)
{
	NSTabViewItem *i;

	i = [[NSTabViewItem alloc] initWithIdentifier:nil];
	[i setLabel:[NSString stringWithUTF8String:name]];
	[i setView:toNSView(view)];
	[toNSTabView(t) addTabViewItem:i];
}