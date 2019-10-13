# curios

This folder contains guides to the curios I have solved <a href="https://people.smp.uq.edu.au/MichaelBulmer/stuff/curio.php?id=172">#172</a>, <a href="https://people.smp.uq.edu.au/MichaelBulmer/stuff/curio.php?id=173">#173</a>, <a href="https://people.smp.uq.edu.au/MichaelBulmer/stuff/curio.php?id=175">#175</a>

<a href="https://people.smp.uq.edu.au/MichaelBulmer/stuff/curio.php?id=172">#172</a>:<br>
A good starting point for curios is counting the number of rows and columns of each puzzle. This often gives a clue as to how the answer is encoded. So this puzzle has 30 letters per row. 

This puzzle starts off with a word that resembles "oxytocin affects...". However, the puzzle goes "oxytcoinaffetcs". I tested whether the switching of every pair of letters could refer to binary encoding, because if this was the case, then it would mean there are 15 binary numbers (a factor of 5) per line which could mean each 5-bit number could encode a letter of the alphabet.

For the first line of the puzzle it looks like the sentence goes "oxytocin affects social distance b". Comparing the original line of the puzzle and the "correct" line of the puzzle, I let 0=not switched and 1=switched. 

<pre>
ox yt co in af fe tc ss co ai ld si at cn eb
ox yt oc in af fe ct ss oc ia ld is ta nc eb
0  0  1  0  0  0  1  0  1  1  0  1  1  1  0
</pre>

Assuming each letter is encoded as a 5-bit number, 00100 01011 01110 should give us our first 3 letters giving us D K N<br>
Which honestly didn't make sense. HOWEVER, I noticed that there was a pair "ss" which could ambiguously be a 1 or 0, so changing this to 1 gives us:

<pre>
ox yt co in af fe tc ss co ai ld si at cn eb
ox yt oc in af fe ct ss oc ia ld is ta nc eb
0  0  1  0  0  0  1  <b>1</b>  1  1  0  1  1  1  0
</pre>

And voila: Our first 3 letters are D O N. Continuing on, we get D O N T B L A M E M E L O V E M A D E M E C R A Z Y <br>
Googling this gives us the lyrics to Taylor Swift's song Your Love is My Drug which fits with the clue nicely.
