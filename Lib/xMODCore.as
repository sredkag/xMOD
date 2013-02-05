
uint xMODIt(string key, any@ z, string t) {
    print("Loading type "+t);
    if (t == "CBlob") {
        CBlob @obj;
    } else if (t == "CRules") {
        CRules @obj;
    } else if (t == "CSprite") {
        CSprite @obj;
    } else if (t == "CMovement") {
        CMovement @obj;
    } else {
        CBlob @obj;
    }
    z.retrieve(@obj);

    array<string> scr;
    scr = getModScripts(key);
    for (uint i = 0;i<scr.length;i++) {
        if (scr[i].length > 0 && scr[i] != "") {
            print("=X= xLoading "+scr[i]);
            @obj.AddScript(scr[i]);
            print("=X= xLoaded!");
        }
    }
    return scr[i].length;
}

// helper method for loading CFGs
array<string> getModScripts(string name) {
    ConfigFile cfg("../Mods/xMOD/config");
    array<string> test;
    string key = name+"_scripts";
    print("=X= Attempting to load key "+key+" data...");
    if (cfg.keyExists(key)) {
        cfg.readIntoArray_string(test,key);
    } else {
        print("=X= FAILED loading config key "+key);
    }
    return test;
}