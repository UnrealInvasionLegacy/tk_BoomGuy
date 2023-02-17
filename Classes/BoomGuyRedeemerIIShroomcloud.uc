class BoomGuyRedeemerIIShroomcloud extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         UseDirectionAs=PTDU_RightAndNormal
         UseColorScale=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         UseRandomSubdivision=True
         Acceleration=(Z=25.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=51,G=152,R=200))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=48,G=91,R=222))
         ColorScale(3)=(RelativeTime=1.000000)
         FadeInEndTime=0.250000
         MaxParticles=200
         StartLocationOffset=(Z=-500.000000)
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65500.000000),Y=(Min=10000.000000,Max=10000.000000),Z=(Min=700.000000,Max=1000.000000))
         SizeScale(0)=(RelativeSize=1.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=200.000000,Max=300.000000))
         InitialParticlesPerSecond=50.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'EmitterTextures.MultiFrame.smoke_a'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         LifetimeRange=(Max=6.000000)
         StartVelocityRadialRange=(Min=-400.000000,Max=-1000.000000)
         VelocityLossRange=(X=(Min=0.100000,Max=0.400000),Y=(Min=0.100000,Max=0.400000))
         GetVelocityDirectionFrom=PTVD_AddRadial
     End Object
     Emitters(0)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter1'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         UseColorScale=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         UseRandomSubdivision=True
         Acceleration=(Z=70.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=128))
         ColorScale(1)=(RelativeTime=0.300000,Color=(B=51,G=152,R=200))
         ColorScale(2)=(RelativeTime=0.600000,Color=(B=48,G=91,R=222))
         ColorScale(3)=(RelativeTime=1.000000)
         FadeInEndTime=0.250000
         MaxParticles=150
         StartLocationOffset=(Z=-500.000000)
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65500.000000),Y=(Min=10000.000000,Max=10000.000000),Z=(Min=700.000000,Max=1000.000000))
         SizeScale(0)=(RelativeSize=1.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=200.000000,Max=300.000000))
         InitialParticlesPerSecond=50.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'EmitterTextures.MultiFrame.smoke_a'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         LifetimeRange=(Max=7.000000)
         StartVelocityRadialRange=(Min=-200.000000,Max=-800.000000)
         VelocityLossRange=(X=(Min=0.300000,Max=0.700000),Y=(Min=0.300000,Max=0.700000))
         GetVelocityDirectionFrom=PTVD_AddRadial
     End Object
     Emitters(1)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter11'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         UseDirectionAs=PTDU_RightAndNormal
         UseColorScale=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         Acceleration=(Z=110.000000)
         ColorScale(0)=(Color=(G=225,R=255,A=32))
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=45,G=60,R=170,A=255))
         ColorScale(2)=(RelativeTime=0.700000,Color=(A=80))
         ColorScale(3)=(RelativeTime=1.000000)
         FadeInEndTime=0.400000
         CoordinateSystem=PTCS_Relative
         MaxParticles=400
         StartLocationOffset=(Z=-500.000000)
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65500.000000),Y=(Min=10000.000000,Max=10000.000000),Z=(Min=700.000000,Max=1300.000000))
         SizeScale(0)=(RelativeSize=5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=15.000000)
         StartSizeRange=(X=(Min=25.000000,Max=15.000000),Y=(Min=60.000000,Max=90.000000))
         InitialParticlesPerSecond=75.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'EpicParticles.Smoke.Smokepuff'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=8.000000,Max=9.000000)
         StartVelocityRadialRange=(Min=-360.000000,Max=-400.000000)
         VelocityLossRange=(X=(Min=0.400000,Max=0.600000),Y=(Min=0.400000,Max=0.600000))
         GetVelocityDirectionFrom=PTVD_AddRadial
     End Object
     Emitters(2)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter2'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter3
         UseColorScale=True
         FadeIn=True
         RespawnDeadParticles=False
         SpinParticles=True
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         Acceleration=(Z=-50.000000)
         ColorScale(0)=(Color=(G=204,R=255,A=32))
         ColorScale(1)=(RelativeTime=0.300000,Color=(B=118,G=159,R=201,A=255))
         ColorScale(2)=(RelativeTime=0.600000,Color=(B=158,G=163,R=171,A=80))
         ColorScale(3)=(RelativeTime=1.000000,Color=(B=145,G=147,R=151))
         FadeInEndTime=0.600000
         MaxParticles=300
         StartLocationOffset=(Z=-500.000000)
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65500.000000),Y=(Min=10000.000000,Max=10000.000000),Z=(Min=1000.000000,Max=1100.000000))
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=15.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=35.000000)
         StartSizeRange=(X=(Min=15.000000,Max=30.000000),Y=(Min=60.000000,Max=90.000000))
         InitialParticlesPerSecond=100.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'EpicParticles.Smoke.Smokepuff'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=2.000000)
         StartVelocityRadialRange=(Min=-1800.000000,Max=-2800.000000)
         VelocityLossRange=(X=(Min=0.600000,Max=0.800000),Y=(Min=0.600000,Max=0.800000))
         GetVelocityDirectionFrom=PTVD_AddRadial
     End Object
     Emitters(4)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter3'

     Begin Object Class=MeshEmitter Name=MeshEmitter0
         StaticMesh=StaticMesh'AW-2k4XP.Weapons.ShockTankEffectRing'
         RenderTwoSided=True
         UseParticleColor=True
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=123,G=123,R=230))
         FadeOutStartTime=7.500000
         FadeInEndTime=0.200000
         MaxParticles=1
         SizeScale(0)=(RelativeSize=3.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=12.000000)
         StartSizeRange=(Z=(Min=0.800000,Max=0.800000))
         InitialParticlesPerSecond=50000.000000
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=9.000000,Max=10.000000)
         StartVelocityRange=(Z=(Min=211.000000,Max=211.000000))
         MaxAbsVelocity=(Z=2000.000000)
         VelocityLossRange=(X=(Max=0.110000),Y=(Max=0.110000))
     End Object
     Emitters(6)=MeshEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.MeshEmitter0'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         UseColorScale=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=23,G=145,R=225))
         ColorScale(1)=(RelativeTime=0.300000,Color=(B=133,G=183,R=250))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=10,G=40,R=200))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorMultiplierRange=(X=(Min=0.400000,Max=0.400000),Y=(Min=0.400000,Max=0.400000),Z=(Min=0.400000,Max=0.400000))
         MaxParticles=6
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=100.000000,Max=300.000000)
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=0.600000,RelativeSize=19.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Max=150.000000))
         InitialParticlesPerSecond=50000.000000
         Texture=Texture'EpicParticles.Flares.SoftFlare'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=10.000000,Max=12.000000)
         InitialDelayRange=(Min=0.200000,Max=0.200000)
         StartVelocityRadialRange=(Min=-50.000000,Max=-100.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
     End Object
     Emitters(7)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter4'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         UseColorScale=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         UniformSize=True
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=100,G=196,R=247))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=63,G=153,R=243))
         ColorScale(2)=(RelativeTime=0.900000,Color=(B=19,G=44,R=117))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorMultiplierRange=(X=(Min=0.300000,Max=0.300000),Y=(Min=0.300000,Max=0.300000),Z=(Min=0.300000,Max=0.300000))
         MaxParticles=2
         SizeScale(0)=(RelativeSize=0.200000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=10.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=7.000000)
         StartSizeRange=(X=(Min=200.000000,Max=200.000000))
         InitialParticlesPerSecond=50000.000000
         Texture=Texture'EpicParticles.Flares.SoftFlare'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=7.000000,Max=10.000000)
         InitialDelayRange=(Min=0.200000,Max=0.200000)
         StartVelocityRange=(Z=(Min=233.000000,Max=244.000000))
         MaxAbsVelocity=(Z=2000.000000)
         VelocityLossRange=(X=(Max=0.100000),Y=(Max=0.100000))
     End Object
     Emitters(8)=SpriteEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.SpriteEmitter5'

     Begin Object Class=MeshEmitter Name=MeshEmitter1
         StaticMesh=StaticMesh'ParticleMeshes.Complex.ExplosionRing'
         RenderTwoSided=True
         UseParticleColor=True
         FadeOut=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         ColorMultiplierRange=(X=(Min=0.600000,Max=0.600000),Y=(Min=0.600000,Max=0.600000),Z=(Min=0.600000,Max=0.600000))
         FadeOutStartTime=0.800000
         MaxParticles=1
         SizeScale(0)=(RelativeSize=0.400000)
         SizeScale(1)=(RelativeTime=1.500000,RelativeSize=75.000000)
         StartSizeRange=(Z=(Min=0.800000,Max=0.800000))
         InitialParticlesPerSecond=50000.000000
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=2.000000,Max=2.000000)
     End Object
     Emitters(9)=MeshEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.MeshEmitter1'

     Begin Object Class=MeshEmitter Name=MeshEmitter2
         StaticMesh=StaticMesh'ParticleMeshes.Simple.ParticleDome'
         RenderTwoSided=True
         UseParticleColor=True
         UseColorScale=True
         FadeOut=True
         FadeIn=True
         RespawnDeadParticles=False
         UseSizeScale=True
         UseRegularSizeScale=False
         AutomaticInitialSpawning=False
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=123,G=123,R=230))
         FadeOutStartTime=7.500000
         FadeInEndTime=0.200000
         MaxParticles=1
         StartLocationRange=(Z=(Min=180.000000,Max=180.000000))
         SpinsPerSecondRange=(Z=(Min=-1.400000,Max=-1.400000))
         StartSpinRange=(Z=(Min=-1.200000,Max=-1.200000))
         SizeScale(0)=(RelativeSize=3.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=18.000000)
         InitialParticlesPerSecond=50000.000000
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=9.000000,Max=10.000000)
         StartVelocityRange=(Z=(Min=211.000000,Max=211.000000))
         MaxAbsVelocity=(Z=2000.000000)
         VelocityLossRange=(X=(Max=0.110000),Y=(Max=0.110000))
     End Object
     Emitters(10)=MeshEmitter'tk_BoomGuy.BoomGuyRedeemerIIShroomcloud.MeshEmitter2'

     AutoDestroy=True
     bNoDelete=False
     bNetTemporary=True
     RemoteRole=ROLE_DumbProxy
     Style=STY_Masked
     bDirectional=True
}
