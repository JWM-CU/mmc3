
macro 'convert LIF tiff' {

/*
 * - converts LIF files into TIFF. Should preserve .lif color scheme. 
 * - Drag the macro into ImageJ / Fiji
 * - Run the macro (click "run"), and it will ask for an input folder that should contain 1 or more lif files.
 * - Sub files within the .LIF file will be saved as tif files. 
 * - An Abbreviated name of the Lif file and subfile name is appended to the file name.
 * - the TIFFs are saved in a folder generated by the macro, it does not overwrite any files.
 * 
 * Martin Hoehne, August 2015
 * Modified by JWM 2022-03-09 
 * 
 *  Update October 2015: works for Multichannel images as well
 *  https://forum.image.sc/t/produce-max-projections-from-lif-files-in-imagej/93/5 
 */
run("Bio-Formats Macro Extensions");

dir1 = getDirectory("Choose folder with lif files ");
list = getFileList(dir1);		// This is an array 
		// showMessage("list.length = " + list.length ); exit;
		// showMessage("lengthOf(list) = " + lengthOf(list) ); exit;
		
setBatchMode(true);

		// create folders for the tifs
	dir1parent = File.getParent(dir1);
	dir1name = File.getName(dir1);
	dir2 = dir1parent+File.separator+dir1name+"--Tiffs";
	if (File.exists(dir2)==false) {
				File.makeDirectory(dir2); // new directory for tiff
		}
 
for (i=0; i<list.length; i++) {												
	print("processing ... "+i+ " of " + lengthOf(list) +"\n         " + list[i]);		
	path=dir1+list[i];

		//how many series in this lif file?
	Ext.setId(path);//-- Initializes the given path (filename).
	Ext.getSeriesCount(seriesCount); //-- Gets the number of image series in the active dataset.
	
	for (j=1; j<=seriesCount; j++) {
		showProgress(-j/seriesCount);
		run("Bio-Formats Importer", "open=path autoscale color_mode=Colorized view=Hyperstack stack_order=XYCZT series_"+j );
	
		name=File.nameWithoutExtension;

			//retrieve name of the series from metadata
		text=getMetadata("Info");
		n1=indexOf(text," Name = ")+8;// the Line in the Metadata reads "Series 0 Name = ". Complete line cannot be taken, because
									  // The number changes. But at least in the current version of Metadata this line is the 
									  // only occurence of " Name ="
		n2=indexOf(text,"SizeC = ");  // this is the next line in the Metadata
		seriesname=substring(text, n1, n2-2);
 		max_name_length = 9;
		abbr_name = name;
		if ( lengthOf(name) > max_name_length) {	
			abbr_name = substring(name, 0, max_name_length-1); 
		}

		saveAs("TIFF", dir2+File.separator+abbr_name+"__"+seriesname+".tif");		
		run("Close All");
		run("Collect Garbage");
		
	}

}
showMessage(" -- finished --");	
run("Close All");
setBatchMode(false);

} // macro

