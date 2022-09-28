# Practicing Animation Creation

This repository is created for practicing making different kinds of animations.

### CABasicAnimation
* ````CABasicAnimationController```` corresponds to the ````CABasicAnimation````
* Outlets: ````orange````, ````cyan````, ````blue````, ````green````
* A tap on each of these views triggers a different animation: 
  
| Requirements / View   | ````orangeView````   | ````cyanView````  | ````blueView```` | ````greenView````  | 
| -------------         | -------------                            | -------------                        | -------------   | -------------      | 
| Outcome               | Turns into a circle  <br>in an animated way.| Must become invisible | * Must move along the x-axis. <br> * The final value of x is the coordinate of its center - the same coordinate of the center of ````cyanView````. <br> * At the same time ````blueView```` should rotate 315° clockwise around the Z axis <br> * At the end of the animation, ````blueView```` must save this state.   | * should move from its initial position to the center of the parent view. <br> * At the same time its scale should increase by 1.5 times in both axes (X and Y) and the background color should become magenta. <br> * When these animations are completed, ````greenView```` should animatedly return to its original state. <br> * The cycle should be repeated twice. |
| Duration              | 1 sec  | 1 sec | 2 sec  | 1 sec | 
| Timing Function       | ````kCAMediaTiming```` <br> ````FunctionEaseOut````|  ````kCAMediaTiming```` <br> ````FunctionEaseIn````| ````kCAMediaTiming```` <br> ````FunctionEaseInEaseOut```` |````kCAMediaTiming````<br>````FunctionEaseInEaseOut```` |

#### Result Screen

<img src="https://media.github.bus.zalan.do/user/10996/files/b36ce798-5fbd-4df1-bef0-758ca07e5490" height = 415, width = 200> 

### CAKeyFrameAnimation
* Controller ````CAKeyframeAnimationController```` has two outlets: ````passcodeTextField```` and ````orangeView````
* When you click the ````Start shake animation``` button, the ````passcodeTextField```` should play a shake animation that imitates an incorrect password entry. 
* The ````passcodeTextField```` should be offset along the ````x````-axis with the following values: 0, 10, -10, 10, -5, 5, -5, 0. 
* Time intervals for this animation: 0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1. 
* The total duration of the animation is 0.4 seconds.
* When you click the ````Start```` sin animation button, the ````orangeView```` center should start moving along the sine wave that was previously drawn using the ````showSinPath()```` method.
* The animation must be infinite.
* The duration of one animation cycle is 6 seconds. 
* When moving along the sine wave, orangeView must rotate so that the ````x````-axis of ````orangeView```` is always parallel to the tangent at any point of the sine wave. 

#### Result Screen

<img src="https://user-images.githubusercontent.com/62830083/192880998-92f5fab9-6a59-4bf4-ac74-20706a05db5d.gif" height = 415, width = 200> 

