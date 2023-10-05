// This macro will recursively lists files in a directory.
// Drag this macro into ImageJ and press "run"
// Log window will display the list.
// Open any file on the list by double clicking on it in the Log window.
// from W Rasband, NIH.

  dir = getDirectory("Choose a Directory ");
  count = 1;
  listFiles(dir); 

  function listFiles(dir) {
     list = getFileList(dir);
//     showMessage("list.length = " + list.length); exit;
     for (i=0; i<list.length; i++) {
        if (endsWith(list[i], "/"))
           listFiles(""+dir+list[i]);
        else
           print((count++) + ": " + dir + list[i]);
     }
  }