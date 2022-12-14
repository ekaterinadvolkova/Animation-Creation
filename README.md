# Practicing Animation Creation

This repository is created for practicing making different kinds of animations.

### CABasicAnimation

| Description   | Result Screen                              | 
| ------------- | -------------  | 
| __1.__````CABasicAnimationController```` corresponds to the ````CABasicAnimation````.<br><br>__2.__ Outlets: ````orange````, ````cyan````, ````blue````, ````green````.<br><br> __3.__ A tap on each of these views triggers a different animation: <br><br> __OrangeView:__ <br> __1.__ Turns into a circle in an animated way.<br> __2.__ Duration is 1 sec. <br> __3.__ The timing functinon is ````kCAMediaTimingFunctionEaseOut````. <br><br> __CyanView:__<br> __1.__ Must become invisible. <br> __2.__ Duration is 1 sec. <br> __3.__ The timing functinon is ````kCAMediaTimingFunctionEaseIn````. <br><br> __BlueView:__ <br> __1.__ Must move along the x-axis. <br> __2.__ The final value of x is the coordinate of its center is the same <br> coordinate of the center of ````cyanView````. <br> __3.__  At the same time ````blueView```` should rotate 315° clockwise around the Z axis. <br> __4.__ At the end of the animation, ````blueView```` must save this state. <br> __5.__ Duration is 2 secs. <br> __6.__ The timing functinon is ````kCAMediaTimingFunctionEaseInEaseOut````. <br><br>  __GreenView:__ <br> __1.__ Should move from its initial position to the center of the parent view. <br> __2.__ At the same time its scale should increase by 1.5 times in both axes <br>(X and Y) and the background color should become magenta. <br> __3.__ When these animations are completed, ````greenView```` should animatedly return to its <br> original state. <br> __4.__ The cycle should be repeated twice.<br> __5.__ Duration is 1 sec. <br> __6.__ The timing functinon is ````kCAMediaTimingFunctionEaseInEaseOut````.<br> |         <img src="https://media.github.bus.zalan.do/user/10996/files/b36ce798-5fbd-4df1-bef0-758ca07e5490" height = 415, width = 200>                                  |


### CAKeyFrameAnimation

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ Controller ````CAKeyframeAnimationController```` has two outlets: ````passcodeTextField```` <br> and ````orangeView````. <br><br> __2.__ When you click the ````Start shake animation```` button, the ````passcodeTextField```` <br> should play a shake animation that imitates an incorrect password entry. <br><br>__3.__ The ````passcodeTextField```` should be offset along the ````x````-axis with the following <br>  values: 0, 10, -10, 10, -5, 5, -5, 0. <br><br> __4.__ Time intervals for this animation: 0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1.<br><br> __5.__ The total duration of the animation is 0.4 seconds.<br><br> __6.__ When you click the ````Start```` sin animation button, the ````orangeView```` center should <br> start moving along the sine wave that was previously drawn using the ````showSinPath()```` <br> method.<br><br> __7.__ The animation must be infinite.<br><br> __8.__ The duration of one animation cycle is 6 seconds. <br><br> __9.__ When moving along the sine wave, orangeView must rotate so that the <br> ````x````-axis of ````orangeView```` is always parallel to the tangent at any point of the sine wave. |  <img src="https://user-images.githubusercontent.com/62830083/192880998-92f5fab9-6a59-4bf4-ac74-20706a05db5d.gif" height = 415, width = 200> | 




### UIKitDynamic Animation

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ The controller is ````UIKitDynamicController````.<br><br>__2.__ The controller has two outlets: ````anchorView```` and ````animationView````.<br><br>  __3.__ ````UIPanGestureRecognizer```` is added to the ````anchorView````.<br><br> __4.__  The ````animationView```` should move with free oscillation around the ````anchorView````. <br><br> __5.__ It should be possible to move the ````anchorView```` with your finger across the screen <br>while maintaining a free swing.|  <img src="https://media.github.bus.zalan.do/user/10996/files/a49dfde4-ba3a-4cf5-9831-0010b7baea35" height = 415, width = 200> | 



### CATransition

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ Controller ````CATransitionController```` has one textLabel outlet with the text "Initial text" <br> in orange.<br><br>__2.__ The text "Initial Text" should be changed to "Sliding".<br><br>__3.__ Transition type is ````kCATransitionMoveIn````.<br><br>__4.__ The colour is green.<br><br>__5.__ The duration is 1 sec<br><br>__6.__ The timingFunction is ````kCAMediaTimingFunctionEaseOut````.<br><br>__7.__ At the end of this animation, the text should change animatedly to the original text.<br><br>__8.__ The transition type - ````kCATransitionFade````.<br><br>__9.__ The text color is orange.<br><br>__10.__ The animation duration is 1 sec.<br><br>__11.__ The timingFunction is ````kCAMediaTimingFunctionEaseOut````.<br><br>| <img src="https://media.github.bus.zalan.do/user/10996/files/a253a040-050c-4bb4-b114-f88b03f74444" height = 415, width = 200>|

### UIView Animation

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ The controller is ````UIViewAnimationController````.<br><br>__2.__ The controller has two outlets: ````animationView```` and ````flipButton````.<br><br>__3.__ The ````UITapGestureRecognizer```` is added to the ````animationView```` in the storyboard.<br><br> __Tapping ````animationView````:__ <br><br> __1.__ The ````animationView```` moves animatedly along the ````X````-axis with a simultaneous <br> 180° clockwise rotation around the ````Z````-axis.<br><br>__2.__ At the end of the animation, the right <br> edge of the ````animationView```` and the right edge of the root view must coincide. <br><br>__3.__ The animation duration is 1 sec.<br><br>__4.__ The delay before start is 0.5 sec.<br><br>__5.__ The ````UIViewAnimationOptions```` is ````curveEaseInOut````.<br><br>__Tapping ````flipButton````:__<br> __1.__ Pressing the flip button each time should animate the root view and the button itself <br> 180° around the ````Z```` axis in a clockwise direction.<br><br>__2.__ The animation duration is 1 sec.<br><br>__3.__ The ````UIViewAnimationOptions```` is ````curveEaseInOut````.<br><br>| <img src="https://user-images.githubusercontent.com/62830083/198103365-f5b77b70-18ea-4804-841c-ffc76ffccb07.gif" height = 415, width = 200>|

### UIViewProperty Animation
| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ The controller is ````UIViewPropertyAnimatorController````.<br><br>__2.__ The controller has one outlet ````animationView````.<br><br> __3.__ ````UIPanGestureRecognizer```` is added to the root view. <br><br> __4.__ Moving the finger horizontally on the root view should cause <br>the ````animationView```` follow the finger. <br><br>__5.__ The movement should be along the ````X````-axis with simultaneous rotation <br>around the ````Z````-axis and zooming of the ````animationView````. <br><br><br>__After removing the finger from the screen:__<br><br> __1.__ If the ````x````-coordinate of the center of the ````animationView```` is smaller than <br>the ````x````-coordinate of the center of the root view, then the ````animationView```` <br>should animatedly return to its original position.<br><br> __2.__ The ````animationView```` animatedly moves to the end point of the animation. <br><br><br> __6.__ Use the position property of the presentation layer to determine the center of the <br>````animationView````.<br><br> __7.__  Use the position property of the presentation layer to determine the center of the <br>````animationView````.<br><br>  __8.__ The ````animationView```` itself should rotate 180° around the ````Z````-axis clockwise. <br><br> __9.__ The scale of the ````animationView```` should increase by 1.5 times.<br><br> __10.__ The ````timingParameters```` should be ````UISpringTimingParameters```` with the following <br>values: ````mass: 2.0, stiffness: 30.0, damping: 7.0, initialVelocity: .zero.````.| <img src="https://user-images.githubusercontent.com/62830083/198134468-6f382e7e-415b-4dba-a1fb-f7c7c6f215d8.gif" height = 415, width = 200>|

