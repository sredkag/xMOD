#include "/Lib/xMODCore.as";

// Rules loader
void onInit( CRules@ this ) {
    array<string> scr;
    scr = getModScripts("gamemode_"+sv_gamemode);
    for (uint i = 0;i<scr.length;i++) {
        if (scr[i].length > 0 && scr[i] != "") {
            print("=X= xLoading "+scr[i]);
            this.AddScript(scr[i]);
            print("=X= xLoaded!");
        }
    }
    print("=X= "+scr.length+" "+sv_gamemode+" scripts loaded.");
}