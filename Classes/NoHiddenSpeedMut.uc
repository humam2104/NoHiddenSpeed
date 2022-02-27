
class NoHiddenSpeedMut extends KFMutator;

var const bool bHiddenSpeedAllowed;

/*function ScoreKill(Controller Killer, Controller Killed)
{
    local KFPawn_Monster KFPM;
    KFPM = KFAIController_Monster(Killed).MyKFPawn;
    if ( (KFPM) != none )
    {
        `log("Killed Zed Name is: " $ KFPM.class.name);
        `log("Ground Speed is: " $ KFPM.GroundSpeed);
        `log("Sprint Speed is: " $ KFPM.SprintSpeed);
        `log("Zed's bCanUseHiddenSpeed is: " $ KFPM.bCanUseHiddenSpeed);
        `log("********************");
    }
}
*/

function ModifyAI(Pawn AIPawn)
{
    local KFPawn_Monster KFPM;
    KFPM = KFPawn_Monster(AIPawn);
    KFPM.bCanUseHiddenSpeed = bHiddenSpeedAllowed;
    KFPM.HiddenGroundSpeed = KFPM.SprintSpeed;
}

defaultproperties{
    bHiddenSpeedAllowed = false
}