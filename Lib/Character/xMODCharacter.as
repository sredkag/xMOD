#include "/Lib/xMODCore.as";

// Character loader
void onInit(CBlob@ this) {
    string n = this.getName();
    if (n != "") {
        array<string> scr;
        scr = getModScripts("blob_"+n);
        for (uint i = 0;i<scr.length;i++) {
            if (scr[i].length > 0 && scr[i] != "") {
                print("=X= xLoading "+scr[i]);
                this.AddScript(scr[i]);
                print("=X= xLoaded!");
            }
        }
        print("=X= "+scr.length+" "+n+" scripts loaded.");
    }
}
