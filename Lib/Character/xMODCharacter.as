#include "/Lib/xMODCore.as";

// Character loader
void onInit(CBlob@ this) {
    string n = this.getName();
    if (n != "") {
        any z;
        z.store(@this);
        uint num = xMODIt("blob_"+n,z,"CBlob");
        print("=X= "+num+" "+n+" scripts loaded.");
    }
}
