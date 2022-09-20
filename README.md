# Practicing Animation Creation

This repository is created for practicing making different kinds of animations.

### CABasicAnimation
* ````CABasicAnimationController```` corresponds to the ````CABasicAnimation````
* This controller has 4 UIView outlets of different colors: 
  * orange
  * cyan
  * blue
  * green
* A tap on each of these views triggers a different animation: 
  
| Requirements / View   | ````orangeView````   | ````cyanView````  | ````blueView```` | ````greenView````  | 
| -------------         | -------------                            | -------------                        | -------------   | -------------      | 
| Outcome               | Turns into a circle  <br>in an animated way.| Must become invisible | * Must move along the x-axis. <br> * The final value of x is the coordinate of its center - the same coordinate of the center of ````cyanView````. <br> * At the same time ````blueView```` should rotate 315° clockwise around the Z axis <br> * At the end of the animation, ````blueView```` must save this state.   | * should move from its initial position to the center of the parent view. <br> * At the same time its scale should increase by 1.5 times in both axes (X and Y) and the background color should become magenta. <br> * When these animations are completed, ````greenView```` should animatedly return to its original state. <br> * The cycle should be repeated twice. |
| Duration              | 1 sec  | 1 sec | 2 sec  | 1 sec | 
| Timing Function       | ````kCAMediaTiming```` <br> ````FunctionEaseOut````|  ````kCAMediaTiming```` <br> ````FunctionEaseIn````| ````kCAMediaTiming```` <br> ````FunctionEaseInEaseOut```` |````kCAMediaTiming````<br>````FunctionEaseInEaseOut```` |


