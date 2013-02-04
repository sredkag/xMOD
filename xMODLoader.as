// The main mod loader script. Must be in the base .cfg files to work.

// Rules loader
void onInit( CRules@ this ) {
    array<string> scr;
    scr = getModScripts("Rules/"+sv_gamemode);
    for (uint i = 0;i<scr.length;i++) {
        if (scr[i].length > 0 && scr[i] != "") {
            print("=X= - xLoading "+scr[i]);
            this.AddScript(scr[i]);
            print("=X= - xLoaded!");
        }
    }
    print("=X= "+scr.length+" "+sv_gamemode+" scripts loaded.");
}

// Character loader
void onInit(CBlob@ this) {
    string n = this.getName();
    if (n != "") {
        array<string> scr;
        scr = getModScripts("Blobs/"+n);
        for (uint i = 0;i<scr.length;i++) {
            if (scr[i].length > 0 && scr[i] != "") {
                print("=X= - xLoading "+scr[i]);
                this.AddScript(scr[i]);
                print("=X= - xLoaded!");
            }
        }
        print(scr.length+" "+n+" scripts loaded.");
    }
}

// Character sprite loader
void onInit(CSprite@ this) {
    CBlob@ blob = this.getBlob();
    string n = blob.getName();
    if (n != "") {
        array<string> scr;
        scr = getModScripts("Blobs/"+n+"_sprite");
        for (uint i = 0;i<scr.length;i++) {
            if (scr[i].length > 0 && scr[i] != "") {
                print("=X= - xLoading "+scr[i]);
                this.AddScript(scr[i]);
                print("=X= - xLoaded!");
            }
        }
        print("=X="+scr.length+" "+n+" sprite scripts loaded.");
    }
}


// helper method for loading CFGs
array<string> getModScripts(string name) {
    ConfigFile cfg("../Mods/xMOD/Configs/"+name+".x");
    array<string> test;
    cfg.readIntoArray_string(test, "scripts");
    return test;
}