class M_BoomGuy extends tk_Monster;

#EXEC OBJ LOAD FILE="Resources/tk_BoomGuy_rc.u" PACKAGE="tk_BoomGuy"
#exec DynamicLoadObject Texture='intro_characters.crowd.SC_CrowdBig_T'

var() sound Noob;
var config float BoomDamage;
var config float BoomRadius;
var bool bStinging;

simulated function PostBeginPlay()
{
	Super.PostBeginPlay();
	PlayAnim('sign_2_cyc');
}

function SetMovementPhysics()
{
	SetPhysics(PHYS_Flying); 
	PlayAnim('sign_2_cyc');
}

function WingBeat()
{
	PlaySound(Noob, SLOT_Interact);
}

simulated function AnimEnd(int Channel)
{
	local name Anim;
	local float frame,rate;
	local vector AccelDir;

	if ( bShotAnim )
		bShotAnim = false;
	if ( bVictoryNext && (Physics != PHYS_Falling) )
	{
		bVictoryNext = false;
		PlayVictory();
		return;
	}
	GetAnimParams(0, Anim,frame,rate);
	if ( Anim != 'sign_2_cyc' )
		TweenAnim('sign_1_cyc',0.4);
	else if ( (frame > 0.5) && (FRand() < 0.35) )
	{
		AccelDir = Normal(Acceleration);
		if ( AccelDir.Z > 0.5 )
			PlayAnim('sign_99_cyc');
		else
			TweenAnim('sign_98_cyc',0.8 + 2*FRand()+FRand());
	}
	else
		PlayAnim('boo_3_cyc');
}

simulated function PlayDirectionalHit(Vector HitLoc)
{
	TweenAnim('cheer_97_cyc', 0.05);
}

function PlayVictory()
{
	SetAnimAction('cheer_7_cyc');
}

function bool MeleeDamageBoom(int hitdamage, vector pushdir)
{
	local vector HitLocation, HitNormal;
	local actor HitActor;
	
	If ( (Controller.target != None) && (VSize(Controller.Target.Location - Location) <= MeleeRange * 1.4 + Controller.Target.CollisionRadius + CollisionRadius)
		&& ((Physics == PHYS_Flying) || (Physics == PHYS_Swimming) || (Abs(Location.Z - Controller.Target.Location.Z) 
			<= FMax(CollisionHeight, Controller.Target.CollisionHeight) + 0.5 * FMin(CollisionHeight, Controller.Target.CollisionHeight))) )
	{	
		HitActor = Trace(HitLocation, HitNormal, Controller.Target.Location, Location, false);
		if ( HitActor != None )
			return false;
		Controller.Target.TakeDamage(hitdamage, self,HitLocation, pushdir, class'DamTypeBoomGuy');
		return true;
	}
	return false;
}

function RangedAttack(Actor A)
{
	if ( bShotAnim )
		return;
		
	if ( Location.Z - A.Location.Z + A.CollisionHeight <= 0 )
		return;
	if ( VSize(A.Location - Location) > MeleeRange + CollisionRadius + A.CollisionRadius - FMax(0, 0.7 * A.Velocity Dot Normal(A.Location - Location)) )
		return;
	bShotAnim = true;
	Acceleration = AccelRate * Normal(A.Location - Location + vect(0,0,0.8) * A.CollisionHeight);
	Enable('Bump');
	bStinging = true;
	if (FRand() < 0.5)
	{
		SetAnimAction('cheer_3_cyc');
		PlaySound(Noob, SLOT_Interact);	 		
	}
	else
	{
 		SetAnimAction('cheer_98_cyc');
 		PlaySound(Noob, SLOT_Interact); 
 	}	
 }

singular function Bump(actor Other)
{
	local name Anim;
	local float frame,rate;
	
	if ( bShotAnim && bStinging )
	{
		bStinging = false;
		GetAnimParams(0, Anim,frame,rate);
		if ( (Anim == 'cheer_98_cyc') || (Anim == 'cheer_3_cyc') )
			MeleeDamageBoom(5000, (20000.0 * Normal(Controller.Target.Location - Location)));
		Velocity *= -0.5;
		Acceleration *= -1;
		if (Acceleration.Z < 0)
			Acceleration.Z *= -1;
	}		
	Super.Bump(Other);
}

simulated function PlayDying(class<DamageType> DamageType, vector HitLoc)
{
    AmbientSound = None;
    bCanTeleport = false;
    bReplicateMovement = false;
    bTearOff = true;
    bPlayedDeath = true;

    HitDamageType = DamageType; 
    TakeHitLocation = HitLoc;
    LifeSpan = RagdollLifeSpan;

    GotoState('Dying');

    Velocity += TearOffMomentum;
    BaseEyeHeight = Default.BaseEyeHeight;
    SetInvisibility(0.0);
    PlayDirectionalDeath(HitLoc);
    SetPhysics(PHYS_Falling);
    PlaySound(DeathSound[Rand(4)], SLOT_Pain,1000*TransientSoundVolume, true,800);
	PlaySound(Sound'tk_BoomGuy.BoomGuy.BoomGuyExplode',,300*TransientSoundVolume, true,800);
    Spawn(class'BoomGuyExplosionEffects',,, Instigator.Location, Rot(0,16384,0));
    HurtRadius(BoomDamage, BoomRadius, class'DamTypeBoomGuy', 100000, Instigator.Location);
	super.PlayDying(DamageType,HitLoc);
	bHidden = true;
}

defaultproperties
{
     Noob=Sound'tk_BoomGuy.BoomGuy.Noob'
     BoomDamage=100000.000000
     BoomRadius=2000.000000
     bCanDodge=False
     HitSound(0)=Sound'tk_BoomGuy.BoomGuy.Noob'
     HitSound(1)=Sound'tk_BoomGuy.BoomGuy.Noob'
     HitSound(2)=Sound'tk_BoomGuy.BoomGuy.Noob'
     HitSound(3)=Sound'tk_BoomGuy.BoomGuy.Noob'
     DeathSound(0)=Sound'tk_BoomGuy.BoomGuy.boom'
     DeathSound(1)=Sound'tk_BoomGuy.BoomGuy.boom2'
     DeathSound(2)=Sound'tk_BoomGuy.BoomGuy.Noob'
     DeathSound(3)=Sound'tk_BoomGuy.BoomGuy.Dance'
     ChallengeSound(0)=Sound'tk_BoomGuy.BoomGuy.hstime'
     ChallengeSound(1)=Sound'tk_BoomGuy.BoomGuy.Noob'
     ChallengeSound(2)=Sound'tk_BoomGuy.BoomGuy.Noob'
     ChallengeSound(3)=Sound'tk_BoomGuy.BoomGuy.hstime'
     ScoringValue=2000
     bCanFly=True
     bCanStrafe=False
     MeleeRange=200.000000
     WaterSpeed=300.000000
     AirSpeed=500.000000
     AccelRate=600.000000
     Health=2000
     bPhysicsAnimUpdate=False
     MovementAnims(0)="sign_2_cyc"
     MovementAnims(1)="sign_1_cyc"
     MovementAnims(2)="sign_98_cyc"
     MovementAnims(3)="sign_99_cyc"
     WalkAnims(0)="sign_2_cyc"
     WalkAnims(1)="sign_1_cyc"
     WalkAnims(2)="sign_98_cyc"
     WalkAnims(3)="sign_99_cyc"
     AirAnims(0)="sign_2_cyc"
     AirAnims(1)="sign_1_cyc"
     AirAnims(2)="sign_98_cyc"
     AirAnims(3)="sign_99_cyc"
     TakeoffAnims(0)="sign_2_cyc"
     TakeoffAnims(1)="sign_1_cyc"
     TakeoffAnims(2)="sign_98_cyc"
     TakeoffAnims(3)="sign_99_cyc"
     AirStillAnim="sign_2_cyc"
     TakeoffStillAnim="sign_1_cyc"
     Mesh=SkeletalMesh'tk_BoomGuy.BoomGuy.BoomGuyMesh'
     DrawScale=0.500000
     Skins(0)=Texture'intro_characters.crowd.SC_CrowdBig_T'
     TransientSoundVolume=25.000000
     CollisionRadius=25.000000
     CollisionHeight=44.000000
     Mass=80.000000
     Buoyancy=80.000000
     RotationRate=(Pitch=600,Yaw=65000,Roll=819)
	 bUseCylinderCollision=False
}
