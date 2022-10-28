function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // plant1
	global.__objectDepths[1] = 0; // plant2
	global.__objectDepths[2] = 0; // plant3
	global.__objectDepths[3] = 5; // plant4
	global.__objectDepths[4] = 0; // plant5
	global.__objectDepths[5] = 0; // plant6
	global.__objectDepths[6] = -100; // plant7
	global.__objectDepths[7] = -1; // plant8
	global.__objectDepths[8] = 0; // plant9
	global.__objectDepths[9] = 0; // plant10
	global.__objectDepths[10] = 0; // plant11
	global.__objectDepths[11] = 0; // plant12
	global.__objectDepths[12] = 0; // plant13
	global.__objectDepths[13] = 0; // plant14
	global.__objectDepths[14] = 0; // plant15
	global.__objectDepths[15] = 0; // plant16
	global.__objectDepths[16] = 0; // plant17
	global.__objectDepths[17] = 0; // plant18
	global.__objectDepths[18] = 0; // plant19
	global.__objectDepths[19] = 0; // plant20
	global.__objectDepths[20] = 0; // plant21
	global.__objectDepths[21] = 0; // plant22
	global.__objectDepths[22] = 0; // plant23
	global.__objectDepths[23] = 0; // plant24
	global.__objectDepths[24] = 0; // plant25
	global.__objectDepths[25] = 0; // plant26
	global.__objectDepths[26] = 0; // plant27
	global.__objectDepths[27] = 0; // plant28
	global.__objectDepths[28] = 0; // plant29
	global.__objectDepths[29] = 0; // plant30
	global.__objectDepths[30] = 0; // plant31
	global.__objectDepths[31] = 0; // plant32
	global.__objectDepths[32] = 0; // plant33
	global.__objectDepths[33] = 0; // plant34
	global.__objectDepths[34] = 0; // plant35
	global.__objectDepths[35] = 0; // plant36
	global.__objectDepths[36] = 0; // plant37
	global.__objectDepths[37] = 0; // algae
	global.__objectDepths[38] = 0; // basiczombie
	global.__objectDepths[39] = 0; // coneheadzombie
	global.__objectDepths[40] = 0; // bucketheadzombie
	global.__objectDepths[41] = 0; // bullet1
	global.__objectDepths[42] = 0; // bullet2
	global.__objectDepths[43] = 0; // bullet3
	global.__objectDepths[44] = 0; // bullet4
	global.__objectDepths[45] = 0; // bullet5
	global.__objectDepths[46] = 0; // bullet6
	global.__objectDepths[47] = 0; // bullet7
	global.__objectDepths[48] = -10; // bullet8
	global.__objectDepths[49] = -10; // bullet9
	global.__objectDepths[50] = 0; // bullet10
	global.__objectDepths[51] = 0; // bullet11
	global.__objectDepths[52] = 0; // bullet12
	global.__objectDepths[53] = 0; // bullet13
	global.__objectDepths[54] = 0; // bullet14
	global.__objectDepths[55] = 0; // bullet15
	global.__objectDepths[56] = -5; // sun
	global.__objectDepths[57] = -5; // coldsun
	global.__objectDepths[58] = -5; // moon
	global.__objectDepths[59] = 0; // placer
	global.__objectDepths[60] = 0; // slots
	global.__objectDepths[61] = 10000; // stats
	global.__objectDepths[62] = 10; // tiletypewater
	global.__objectDepths[63] = 10; // tiletypesteammaker
	global.__objectDepths[64] = 0; // tiletypesteam
	global.__objectDepths[65] = 0; // tiletypestink
	global.__objectDepths[66] = 0; // fogger
	global.__objectDepths[67] = 10; // tiletypepower
	global.__objectDepths[68] = 0; // tiletypepom
	global.__objectDepths[69] = 0; // selection
	global.__objectDepths[70] = 0; // plants


	global.__objectNames[0] = "plant1";
	global.__objectNames[1] = "plant2";
	global.__objectNames[2] = "plant3";
	global.__objectNames[3] = "plant4";
	global.__objectNames[4] = "plant5";
	global.__objectNames[5] = "plant6";
	global.__objectNames[6] = "plant7";
	global.__objectNames[7] = "plant8";
	global.__objectNames[8] = "plant9";
	global.__objectNames[9] = "plant10";
	global.__objectNames[10] = "plant11";
	global.__objectNames[11] = "plant12";
	global.__objectNames[12] = "plant13";
	global.__objectNames[13] = "plant14";
	global.__objectNames[14] = "plant15";
	global.__objectNames[15] = "plant16";
	global.__objectNames[16] = "plant17";
	global.__objectNames[17] = "plant18";
	global.__objectNames[18] = "plant19";
	global.__objectNames[19] = "plant20";
	global.__objectNames[20] = "plant21";
	global.__objectNames[21] = "plant22";
	global.__objectNames[22] = "plant23";
	global.__objectNames[23] = "plant24";
	global.__objectNames[24] = "plant25";
	global.__objectNames[25] = "plant26";
	global.__objectNames[26] = "plant27";
	global.__objectNames[27] = "plant28";
	global.__objectNames[28] = "plant29";
	global.__objectNames[29] = "plant30";
	global.__objectNames[30] = "plant31";
	global.__objectNames[31] = "plant32";
	global.__objectNames[32] = "plant33";
	global.__objectNames[33] = "plant34";
	global.__objectNames[34] = "plant35";
	global.__objectNames[35] = "plant36";
	global.__objectNames[36] = "plant37";
	global.__objectNames[37] = "algae";
	global.__objectNames[38] = "basiczombie";
	global.__objectNames[39] = "coneheadzombie";
	global.__objectNames[40] = "bucketheadzombie";
	global.__objectNames[41] = "bullet1";
	global.__objectNames[42] = "bullet2";
	global.__objectNames[43] = "bullet3";
	global.__objectNames[44] = "bullet4";
	global.__objectNames[45] = "bullet5";
	global.__objectNames[46] = "bullet6";
	global.__objectNames[47] = "bullet7";
	global.__objectNames[48] = "bullet8";
	global.__objectNames[49] = "bullet9";
	global.__objectNames[50] = "bullet10";
	global.__objectNames[51] = "bullet11";
	global.__objectNames[52] = "bullet12";
	global.__objectNames[53] = "bullet13";
	global.__objectNames[54] = "bullet14";
	global.__objectNames[55] = "bullet15";
	global.__objectNames[56] = "sun";
	global.__objectNames[57] = "coldsun";
	global.__objectNames[58] = "moon";
	global.__objectNames[59] = "placer";
	global.__objectNames[60] = "slots";
	global.__objectNames[61] = "stats";
	global.__objectNames[62] = "tiletypewater";
	global.__objectNames[63] = "tiletypesteammaker";
	global.__objectNames[64] = "tiletypesteam";
	global.__objectNames[65] = "tiletypestink";
	global.__objectNames[66] = "fogger";
	global.__objectNames[67] = "tiletypepower";
	global.__objectNames[68] = "tiletypepom";
	global.__objectNames[69] = "selection";
	global.__objectNames[70] = "plants";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
