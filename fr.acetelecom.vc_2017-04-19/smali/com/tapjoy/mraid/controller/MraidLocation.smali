.class public Lcom/tapjoy/mraid/controller/MraidLocation;
.super Lcom/tapjoy/mraid/controller/Abstract;


# instance fields
.field final c:I

.field private d:Landroid/location/LocationManager;

.field private e:Z

.field private f:Lcom/tapjoy/mraid/listener/Loc;

.field private g:Lcom/tapjoy/mraid/listener/Loc;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->c:I

    iput-boolean v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tapjoy/mraid/listener/Loc;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/tapjoy/mraid/listener/Loc;-><init>(Landroid/content/Context;ILcom/tapjoy/mraid/controller/MraidLocation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ lat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->i:Z

    return v0
.end method

.method public fail()V
    .locals 2

    const-string v0, "MRAID Location"

    const-string v1, "Location can\'t be determined"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v1, "window.mraidview.fireErrorEvent(\"Location cannot be identified\", \"OrmmaLocationController\")"

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "MRAID Location"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocation: hasPermission: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->d:Landroid/location/LocationManager;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_3
    const-string v2, "MRAID Location"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tapjoy/mraid/controller/MraidLocation;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public startLocationListener()V
    .locals 1

    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->start()V

    :cond_1
    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    iget v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->g:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->f:Lcom/tapjoy/mraid/listener/Loc;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/listener/Loc;->stop()V

    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tapjoy/mraid/controller/MraidLocation;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID Location"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/MraidLocation;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    return-void
.end method
