To fix the KVO retain cycle, we must remove the observer when it's no longer needed, typically in the `dealloc` method of the observer.  Here's the corrected code:

```objectivec
@interface MyObserver : NSObject
@property (nonatomic, weak) ObservedObject *observedObject;
@end

@implementation MyObserver
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    // Handle KVO notification
}

- (void)dealloc {
    [self.observedObject removeObserver:self forKeyPath:@