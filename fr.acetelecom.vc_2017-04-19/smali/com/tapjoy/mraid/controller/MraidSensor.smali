.class public Lcom/tapjoy/mraid/controller/MraidSensor;
.super Lcom/tapjoy/mraid/controller/Abstract;


# instance fields
.field final c:I

.field private d:Lcom/tapjoy/mraid/listener/Accel;

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->c:I

    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->e:F

    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->f:F

    iput v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->g:F

    new-instance v0, Lcom/tapjoy/mraid/listener/Accel;

    invoke-direct {v0, p2, p0}, Lcom/tapjoy/mraid/listener/Accel;-><init>(Landroid/content/Context;Lcom/tapjoy/mraid/controller/MraidSensor;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 3

    const-string v0, "MRAID Sensor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHeading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/listener/Accel;->getHeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->getHeading()F

    move-result v0

    return v0
.end method

.method public getTilt()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ x : \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", y : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", z : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID Sensor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTilt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onHeadingChange(F)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ heading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v2, p1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID Sensor"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onShake()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "mraid.gotShake()"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onTilt(FFF)V
    .locals 2

    iput p1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->e:F

    iput p2, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->f:F

    iput p3, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->g:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ tilt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/MraidSensor;->getTilt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID Sensor"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingHeading()V

    return-void
.end method

.method public startShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingShake()V

    return-void
.end method

.method public startTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->startTrackingTilt()V

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopAllListeners()V

    return-void
.end method

.method public stopHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingHeading()V

    return-void
.end method

.method public stopShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingShake()V

    return-void
.end method

.method public stopTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidSensor;->d:Lcom/tapjoy/mraid/listener/Accel;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Accel;->stopTrackingTilt()V

    return-void
.end method
