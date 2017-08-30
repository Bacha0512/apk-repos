.class public Lcom/ironsource/environment/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "bestLocation":Landroid/location/Location;
    const-wide/high16 v2, -0x8000000000000000L

    .line 24
    .local v2, "bestLocationTime":J
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v10}, Lcom/ironsource/environment/ApplicationContext;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v1, v0

    .line 40
    .end local v0    # "bestLocation":Landroid/location/Location;
    .local v1, "bestLocation":Landroid/location/Location;
    :goto_0
    return-object v1

    .line 28
    .end local v1    # "bestLocation":Landroid/location/Location;
    .restart local v0    # "bestLocation":Landroid/location/Location;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 30
    .local v7, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v9

    .line 31
    .local v9, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 32
    .local v8, "provider":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 33
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 36
    .local v4, "currentTime":J
    cmp-long v11, v4, v2

    if-lez v11, :cond_1

    .line 37
    move-object v0, v6

    goto :goto_1

    .end local v4    # "currentTime":J
    .end local v6    # "location":Landroid/location/Location;
    .end local v8    # "provider":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 40
    .end local v0    # "bestLocation":Landroid/location/Location;
    .restart local v1    # "bestLocation":Landroid/location/Location;
    goto :goto_0
.end method
