# Practicing Animation Creation

This repository is created for practicing making different kinds of animations.

### CABasicAnimation

| Description   | Result Screen                              | 
| ------------- | -------------  | 
| __1.__````CABasicAnimationController```` corresponds to the ````CABasicAnimation````.<br><br>__2.__ Outlets: ````orange````, ````cyan````, ````blue````, ````green````.<br><br> __3.__ A tap on each of these views triggers a different animation: <br><br> __OrangeView:__ <br> __1.__ Turns into a circle in an animated way.<br> __2.__ Duration is 1 sec. <br> __3.__ The timing functinon is ````kCAMediaTimingFunctionEaseOut````. <br><br> __CyanView:__<br> __1.__ Must become invisible. <br> __2.__ Duration is 1 sec. <br> __3.__ The timing functinon is ````kCAMediaTimingFunctionEaseIn````. <br><br> __BlueView:__ <br> __1.__ Must move along the x-axis. <br> __2.__ The final value of x is the coordinate of its center is the same <br> coordinate of the center of ````cyanView````. <br> __3.__  At the same time ````blueView```` should rotate 315° clockwise around the Z axis. <br> __4.__ At the end of the animation, ````blueView```` must save this state. <br> __5.__ Duration is 2 secs. <br> __6.__ The timing functinon is ````kCAMediaTimingFunctionEaseInEaseOut````. <br><br>  __GreenView:__ <br> __1.__ Should move from its initial position to the center of the parent view. <br> __2.__ At the same time its scale should increase by 1.5 times in both axes <br>(X and Y) and the background color should become magenta. <br> __3.__ When these animations are completed, ````greenView```` should animatedly return to its <br> original state. <br> __4.__ The cycle should be repeated twice.<br> __5.__ Duration is 1 sec. <br> __6.__ The timing functinon is ````kCAMediaTimingFunctionEaseInEaseOut````.<br> |          <img src="https://media.github.bus.zalan.do/user/10996/files/b36ce798-5fbd-4df1-bef0-758ca07e5490" height = 415, width = 200>                                  |


### CAKeyFrameAnimation

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ Controller ````CAKeyframeAnimationController```` has two outlets: ````passcodeTextField```` <br> and ````orangeView````. <br><br> __2.__ When you click the ````Start shake animation```` button, the ````passcodeTextField```` <br> should play a shake animation that imitates an incorrect password entry. <br><br>__3.__ The ````passcodeTextField```` should be offset along the ````x````-axis with the following <br>  values: 0, 10, -10, 10, -5, 5, -5, 0. <br><br> __4.__ Time intervals for this animation: 0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1.<br><br> __5.__ The total duration of the animation is 0.4 seconds.<br><br> __6.__ When you click the ````Start```` sin animation button, the ````orangeView```` center should <br> start moving along the sine wave that was previously drawn using the ````showSinPath()```` <br> method.<br><br> __7.__ The animation must be infinite.<br><br> __8.__ The duration of one animation cycle is 6 seconds. <br><br> __9.__ When moving along the sine wave, orangeView must rotate so that the <br> ````x````-axis of ````orangeView```` is always parallel to the tangent at any point of the sine wave. |  <img src="https://user-images.githubusercontent.com/62830083/192880998-92f5fab9-6a59-4bf4-ac74-20706a05db5d.gif" height = 415, width = 200> | 


### CATransition

| Description   | Result Screen  | 
| ------------- | -------------  | 
| __1.__ Controller ````CATransitionController```` has one textLabel outlet with the text "Initial text" <br> in orange.<br><br>__2.__ The text "Initial Text" should be changed to "Sliding".<br><br>__3.__ Transition type is ````kCATransitionMoveIn````.<br><br>__4.__ The colour is green.<br><br>__5.__ The duration is 1 sec<br><br>__6.__ The timingFunction is ````kCAMediaTimingFunctionEaseOut````.<br><br>__7.__ At the end of this animation, the text should change animatedly to the original text.<br><br>__8.__ The transition type - ````kCATransitionFade````.<br><br>__9.__ The text color is orange.<br><br>__10.__ The animation duration is 1 sec.<br><br>__11.__ The timingFunction is ````kCAMediaTimingFunctionEaseOut````.<br><br>| <img src="https://media.github.bus.zalan.do/user/10996/files/a253a040-050c-4bb4-b114-f88b03f74444" height = 415, width = 200>|

