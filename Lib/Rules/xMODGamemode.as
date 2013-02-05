#include "/Lib/xMODCore.as";

// Rules loader
void onInit( CRules@ this ) {
    any z;
    z.store(@this);
    uint num = xMODIt("gamemode_"+sv_gamemode,z,"CRules");
    print("=X= "+num+" "+sv_gamemode+" scripts loaded.");
}