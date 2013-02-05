#include "/Lib/xMODCore.as";

// Character sprite loader
void onInit(CSprite@ this) {
    CBlob@ blob = this.getBlob();
    string n = blob.getName();
    if (n != "") {
        any z;
        z.store(@this);
        uint num = xMODIt("blob_"+n+"_sprite",z,"CSprite");
        print("=X= "+num+" "+n+" sprite scripts loaded.");
    }
}