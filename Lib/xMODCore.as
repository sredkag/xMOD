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