# resync_oscr
Resync-OSCR is a Node-JS App, which takes Discord(Screenshot Input) and tries reading the Image.
With the Read-lines the App will then extract the Information of given Lines (in this Case WOW-Guild-Bank Logs) and read these out for the Guild Contributions.
There are multiple modes implemented for the Input (GreyScale, Upscaling of the Image, Black&White...)
The Processed Data will then be checked with the UndermineJournal Database, which will provide WoW-Gold Prices to evaluate the Guild Contribution, the User did.  
Tesseract has the best Chances of reading correctly when the Image is Black and the Letters are in White.

Problems of this:
Massive Wall of Text or too high Scaled Pictures will result in Abnormal Memory Usage.
Example given: 10000x8000 Image will most likely rise the Memory Usage up to 20Gigabyte of Ram.

