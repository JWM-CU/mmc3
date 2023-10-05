/* 2023-03-10
 *  This macro measures the "distance" between RGB values in a color image.
 *  "how different are these two colors?"
 It consideres the RGB as a 3D matrix, so the distance is given by:
 Distance = Sqrt ( (X1-X2)^2 + (Y1-Y2)^2 + (Z1-Z2)^2 ) (Pythagoras' Theorem)
 The final number is in % of maximum (0,0,0 black vs 255, 255, 255 white = 100%)
 The average RGB value is calculated for the selection. 

To USE:
Open RGB image.	
Draw two selections (shift left click). Requires 2 selections or will give error.
press Run
Outputs to table and displays % maxium distance.

RGB pixel extraction borrowed from:
 * https://forum.image.sc/t/quantify-from-rgb-color-coding/31626/4 
Nicolás De Francesco NicoDF

*/

if (bitDepth() != 24 ) {showMessage("Not RGB image. Exiting ..."); exit;}
max_color_distance = pow(195075, 0.5);	// SQRT ( 255^2 + 255^2 + 255^2)

fileName = File.name;
Table_Name = "Data Table";
Create_Data_Table(Table_Name);			

if (isOpen("ROI Manager")) {											// clear ROImanager
	selectWindow("ROI Manager");     run("Close");	
  }

nSelections = 2;
r_mean	 	= newArray(nSelections + 1);
g_mean 		= newArray(nSelections + 1);
b_mean 		= newArray(nSelections + 1);

roiManager("Split");
if (roiManager("count") != 2 ) {showMessage("wrong number of selections (ROIs). Exiting ..."); exit;}

for (j=0; j < roiManager("count"); ++j)	{
	roiManager("Select", j);
	r_sum = g_sum = b_sum = 0;
	Roi.getContainedPoints(xp, yp);		// get all pixels
										// xp adn yp are arrays
	nPoints=xp.length;
	values=newArray(nPoints);
	for (i = 0; i < nPoints; i++) {
		showProgress(i, nPoints);
		v=getPixel(xp[i], yp[i]);
		r_sum +=(v>>16)&0xff;
		g_sum +=(v>>8)&0xff;
		b_sum +=v&0xff; 
	}

	r_mean[j] = r_sum / nPoints;
	g_mean[j] = g_sum / nPoints;
	b_mean[j] = b_sum / nPoints;
} // for loop thru selections
	
color_distance2 = pow((r_mean[0] - r_mean[1]),2) + pow((g_mean[0] - g_mean[1]),2) + pow((b_mean[0] - b_mean[1]),2) ;	
	
color_distance 		= pow(color_distance2, 0.5); 
norm_color_distance = 100 * color_distance / max_color_distance;
Row_Count = 0;

		// showMessage("% color_distance 	= " + 100 * color_distance /max_color_distance );
showMessage("% color_distance 	= " + norm_color_distance );
		// Write values to table
Table.set("File_Name_",  			Row_Count, fileName, 				Table_Name );
Table.set("Color_distance_",  		Row_Count, d2s(norm_color_distance, 2), 	Table_Name );
Table.update; 

// **************
function Create_Data_Table(Table_Name)		{
// **************
Table.create(Table_Name);
Table.set("File_Name_", 						0, " " );
Table.set("Color_distance_", 					0, " " );
Table.update; 
}
