# High level description of the augmentation method

Let's assume we are augmenting one image. Then augmentation method can be disesembled in these steps.

1. If the object bounding box is far enough (>dmin) from a particular side of an image, then 10(variable d) pixel wide edge is copied from this side and attached back to the the image on the respective side.

2. Point 1. is applied to all sides of an image.

3. Points 1. and 2. all applied 40, 60, 80 and 140 times.

4. Resulting image is blurred.

5. Pixels with location in blurred image which corresponds to original image are substituted with pixels from original image. 

6. Resolution of resulting image is beeing changed so that neither of resolution's parameters is greater then 1000.