#include "/Lib/xMODCore.as";

// Character movement loader
void onInit(CMovement@ this) {
    CBlob@ blob = this.getBlob();
    string n = blob.getName();
    if (n != "") {
        array<string> scr;
        scr = getModScripts("blob_"+n+"_movement");
        for (uint i = 0;i<scr.length;i++) {
            if (scr[i].length > 0 && scr[i] != "") {
                print("=X= xLoading "+scr[i]);
                this.AddScript(scr[i]);
                print("=X= xLoaded!");
            }
        }
        print("=X= "+scr.length+" "+n+" movement scripts loaded.");
    }
}