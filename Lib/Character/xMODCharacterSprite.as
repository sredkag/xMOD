#include "/Lib/xMODCore.as";

// Character sprite loader
void onInit(CSprite@ this) {
    CBlob@ blob = this.getBlob();
    string n = blob.getName();
    if (n != "") {
        array<string> scr;
        scr = getModScripts("blob_"+n+"_sprite");
        for (uint i = 0;i<scr.length;i++) {
            if (scr[i].length > 0 && scr[i] != "") {
                print("=X= xLoading "+scr[i]);
                this.AddScript(scr[i]);
                print("=X= xLoaded!");
            }
        }
        print("=X= "+scr.length+" "+n+" sprite scripts loaded.");
    }
}