#include "/Lib/xMODCore.as";

// Character movement loader
void onInit(CMovement@ this) {
    CBlob@ blob = this.getBlob();
    string n = blob.getName();
    if (n != "") {
        any z;
        z.store(@this);
        uint num = xMODIt("blob_"+n+"_movement",z,"CMovement");
        print("=X= "+num+" "+n+" movement scripts loaded.");
    }
}