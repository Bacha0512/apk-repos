.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;
.implements Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalMediaRouter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
    }
.end annotation


# instance fields
.field final mApplicationContext:Landroid/content/Context;

.field private mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field final mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

.field private final mLowRam:Z

.field private mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

.field final mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/media/MediaRouteProvider$RouteController;",
            ">;"
        }
    .end annotation
.end field

.field final mRouters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/MediaRouter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

.field private mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field final mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

.field private final mUniqueIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 1927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    .line 1928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 1929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 1931
    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    .line 1933
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    .line 1934
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 1946
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 1951
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 1966
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 1967
    invoke-static {p1}, Landroid/support/v4/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 1968
    const-string v0, "activity"

    .line 1969
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1968
    invoke-static {v0}, Landroid/support/v4/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 1975
    invoke-static {p1, p0}, Landroid/support/v7/media/SystemMediaRouteProvider;->obtain(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    .line 1976
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 1977
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p1, "x1"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1921
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p1, "x1"    # Z

    .prologue
    .line 1921
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    return-void
.end method

.method private assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .prologue
    .line 2413
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2414
    .local v0, "componentName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2415
    .local v3, "uniqueId":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 2416
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v5, Landroid/support/v4/util/Pair;

    invoke-direct {v5, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    .end local v3    # "uniqueId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2419
    .restart local v3    # "uniqueId":Ljava/lang/String;
    :cond_0
    const-string v4, "MediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Either "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isn\'t unique in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const/4 v1, 0x2

    .line 2422
    .local v1, "i":I
    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2423
    .local v2, "newUniqueId":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 2424
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v5, Landroid/support/v4/util/Pair;

    invoke-direct {v5, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 2425
    goto :goto_0

    .line 2421
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I
    .locals 3
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .prologue
    .line 2252
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2253
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2254
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;
    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$400(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2258
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2253
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findRemoteControlClientRecord(Ljava/lang/Object;)I
    .locals 4
    .param p1, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 2687
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2688
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2689
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2690
    .local v2, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 2694
    .end local v1    # "i":I
    .end local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :goto_1
    return v1

    .line 2688
    .restart local v1    # "i":I
    .restart local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2694
    .end local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 2431
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2432
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2433
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$200(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2437
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2432
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .prologue
    .line 2441
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2442
    .local v0, "componentName":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mUniqueIdMap:Ljava/util/Map;

    new-instance v2, Landroid/support/v4/util/Pair;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 2553
    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eqz v0, :cond_0

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$300(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 2557
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    .line 2558
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_ROUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 2545
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 2546
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 2547
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMediaSessionRecord(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V
    .locals 1
    .param p1, "mediaSessionRecord"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2671
    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    .line 2672
    if-eqz p1, :cond_1

    .line 2673
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2675
    :cond_1
    return-void
.end method

.method private setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 7
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .prologue
    .line 2563
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v3, p1, :cond_7

    .line 2564
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_3

    .line 2565
    sget-boolean v3, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2566
    const-string v3, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Route unselected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v4, 0x107

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v4, v5, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 2571
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v3, :cond_1

    .line 2572
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v3, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2573
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2574
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2576
    :cond_1
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2577
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2578
    .local v0, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2579
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    goto :goto_0

    .line 2581
    .end local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_2
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2585
    :cond_3
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2587
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_6

    .line 2588
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v3

    .line 2589
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v4

    .line 2588
    invoke-virtual {v3, v4}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2590
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v3, :cond_4

    .line 2591
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2593
    :cond_4
    sget-boolean v3, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 2594
    const-string v3, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Route selected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_5
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v4, 0x106

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2598
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v3, v3, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v3, :cond_6

    .line 2599
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 2600
    .local v2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2601
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2603
    .local v1, "r":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v4

    .line 2604
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v6

    .line 2603
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    .line 2605
    .restart local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2606
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2611
    .end local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .end local v1    # "r":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v2    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2613
    :cond_7
    return-void
.end method

.method private updatePlaybackInfoFromSelectedRoute()V
    .locals 7

    .prologue
    .line 2698
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v4, :cond_4

    .line 2699
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v5

    iput v5, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 2700
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v5

    iput v5, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 2701
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v5

    iput v5, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 2702
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v5

    iput v5, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 2703
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v5

    iput v5, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 2705
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2706
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2707
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2708
    .local v3, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 2706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2710
    .end local v3    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v4, :cond_1

    .line 2711
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 2713
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2730
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 2715
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 2717
    .local v0, "controlType":I
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v4, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2719
    const/4 v0, 0x2

    .line 2721
    :cond_3
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v5, v5, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v6, v6, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->configureVolume(III)V

    goto :goto_1

    .line 2726
    .end local v0    # "controlType":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v4, :cond_1

    .line 2727
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    goto :goto_1
.end method

.method private updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 22
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "providerDescriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    .line 2263
    invoke-virtual/range {p1 .. p2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 2266
    const/4 v14, 0x0

    .line 2267
    .local v14, "targetIndex":I
    const/4 v12, 0x0

    .line 2268
    .local v12, "selectedRouteDescriptorChanged":Z
    if-eqz p2, :cond_d

    .line 2269
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2271
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v11

    .line 2272
    .local v11, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 2275
    .local v9, "routeCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    .local v3, "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    .local v17, "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    move v15, v14

    .end local v14    # "targetIndex":I
    .local v15, "targetIndex":I
    :goto_0
    if-ge v4, v9, :cond_8

    .line 2279
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 2280
    .local v10, "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    invoke-virtual {v10}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v5

    .line 2281
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v13

    .line 2282
    .local v13, "sourceIndex":I
    if-gez v13, :cond_5

    .line 2284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2285
    .local v16, "uniqueId":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/support/v7/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_1

    const/4 v6, 0x1

    .line 2286
    .local v6, "isGroup":Z
    :goto_1
    if-eqz v6, :cond_2

    new-instance v8, Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v5, v1}, Landroid/support/v7/media/MediaRouter$RouteGroup;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    .local v8, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_2
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "targetIndex":I
    .restart local v14    # "targetIndex":I
    move-object/from16 v0, v18

    invoke-interface {v0, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    if-eqz v6, :cond_3

    .line 2292
    new-instance v18, Landroid/support/v4/util/Pair;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v10}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2278
    .end local v6    # "isGroup":Z
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v16    # "uniqueId":Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v15, v14

    .end local v14    # "targetIndex":I
    .restart local v15    # "targetIndex":I
    goto :goto_0

    .line 2285
    .restart local v16    # "uniqueId":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 2286
    .restart local v6    # "isGroup":Z
    :cond_2
    new-instance v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v5, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2294
    .end local v15    # "targetIndex":I
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .restart local v14    # "targetIndex":I
    :cond_3
    invoke-virtual {v8, v10}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2296
    sget-boolean v18, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 2297
    const-string v18, "MediaRouter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Route added: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x101

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    goto :goto_3

    .line 2302
    .end local v6    # "isGroup":Z
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v14    # "targetIndex":I
    .end local v16    # "uniqueId":Ljava/lang/String;
    .restart local v15    # "targetIndex":I
    :cond_5
    if-ge v13, v15, :cond_6

    .line 2303
    const-string v18, "MediaRouter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring route descriptor with duplicate id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v15

    .end local v15    # "targetIndex":I
    .restart local v14    # "targetIndex":I
    goto :goto_3

    .line 2307
    .end local v14    # "targetIndex":I
    .restart local v15    # "targetIndex":I
    :cond_6
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2308
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "targetIndex":I
    .restart local v14    # "targetIndex":I
    move-object/from16 v0, v18

    invoke-static {v0, v13, v15}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2311
    instance-of v0, v8, Landroid/support/v7/media/MediaRouter$RouteGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 2312
    new-instance v18, Landroid/support/v4/util/Pair;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v10}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2315
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v18

    if-eqz v18, :cond_0

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 2318
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 2325
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v10    # "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    .end local v13    # "sourceIndex":I
    .end local v14    # "targetIndex":I
    .restart local v15    # "targetIndex":I
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/util/Pair;

    .line 2326
    .local v7, "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    iget-object v8, v7, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2327
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v0, v7, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/support/v7/media/MediaRouteDescriptor;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2328
    sget-boolean v18, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 2329
    const-string v18, "MediaRouter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Route added: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-object/from16 v18, v0

    const/16 v20, 0x101

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    goto :goto_4

    .line 2333
    .end local v7    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_b
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/util/Pair;

    .line 2334
    .restart local v7    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    iget-object v8, v7, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2335
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v0, v7, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/support/v7/media/MediaRouteDescriptor;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v18

    if-eqz v18, :cond_b

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_b

    .line 2337
    const/4 v12, 0x1

    goto :goto_5

    .end local v7    # "pair":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_c
    move v14, v15

    .line 2347
    .end local v3    # "addedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    .end local v4    # "i":I
    .end local v9    # "routeCount":I
    .end local v11    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v15    # "targetIndex":I
    .end local v17    # "updatedGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;>;>;"
    .restart local v14    # "targetIndex":I
    :cond_d
    :goto_6
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .restart local v4    # "i":I
    :goto_7
    if-lt v4, v14, :cond_f

    .line 2349
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2350
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2347
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 2342
    .end local v4    # "i":I
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_e
    const-string v18, "MediaRouter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring invalid provider descriptor: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2356
    .restart local v4    # "i":I
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 2363
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    :goto_8
    if-lt v4, v14, :cond_11

    .line 2364
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2365
    .restart local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    sget-boolean v18, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v18, :cond_10

    .line 2366
    const-string v18, "MediaRouter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Route removed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x102

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2363
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 2372
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_11
    sget-boolean v18, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v18, :cond_12

    .line 2373
    const-string v18, "MediaRouter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Provider changed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x203

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2377
    .end local v4    # "i":I
    .end local v12    # "selectedRouteDescriptorChanged":Z
    .end local v14    # "targetIndex":I
    :cond_13
    return-void
.end method

.method private updateRouteDescriptorAndNotify(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouteDescriptor;)I
    .locals 4
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "routeDescriptor"    # Landroid/support/v7/media/MediaRouteDescriptor;

    .prologue
    .line 2381
    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v0

    .line 2382
    .local v0, "changes":I
    if-eqz v0, :cond_5

    .line 2383
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 2384
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2385
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x103

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2390
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 2391
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2392
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route volume changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_2
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x104

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2397
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2398
    sget-boolean v1, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 2399
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route presentation display changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_4
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v2, 0x105

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2406
    :cond_5
    return v0
.end method

.method private updateSelectedRouteIfNeeded(Z)V
    .locals 11
    .param p1, "selectedRouteDescriptorChanged"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2447
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2448
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iput-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2452
    :cond_0
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2453
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2454
    .local v4, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2455
    iput-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2456
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found default route: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_2
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2464
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing the bluetooth route because it is no longer selectable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iput-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2468
    :cond_3
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2469
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2470
    .restart local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2471
    iput-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2472
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found bluetooth route: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_5
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2480
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-direct {p0, v9, v10}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2485
    :cond_6
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v6, :cond_8

    .line 2489
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v6

    invoke-direct {p0, v6, v10}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2527
    :cond_7
    :goto_0
    return-void

    .line 2491
    :cond_8
    if-eqz p1, :cond_7

    .line 2494
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v6, v6, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v6, :cond_d

    .line 2495
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteGroup;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v5

    .line 2497
    .local v5, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2498
    .local v2, "idSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2499
    .restart local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2502
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_9
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    .line 2503
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2504
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;>;"
    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2505
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2506
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2507
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2508
    .local v0, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 2509
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2510
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2514
    .end local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;"
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2515
    .restart local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2516
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v7

    .line 2518
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v9}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2517
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    .line 2519
    .restart local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2520
    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2525
    .end local v0    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .end local v2    # "idSet":Ljava/util/Set;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v7/media/MediaRouteProvider$RouteController;>;>;"
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v5    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    goto/16 :goto_0
.end method


# virtual methods
.method public addProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .prologue
    .line 2203
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2204
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 2206
    new-instance v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-direct {v1, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 2207
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    sget-boolean v2, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2209
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x201

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2213
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2215
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2217
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2219
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public addRemoteControlClient(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 2629
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2630
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 2631
    new-instance v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    .line 2632
    .local v1, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3

    .prologue
    .line 2534
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2535
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v0, v2, :cond_0

    .line 2536
    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2537
    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2541
    .end local v0    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    goto :goto_0
.end method

.method public getBluetoothRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mBluetoothRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2076
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 2019
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/hardware/display/DisplayManagerCompat;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 2683
    :goto_0
    return-object v0

    .line 2680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    goto :goto_0

    .line 2683
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2007
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 2014
    :goto_0
    return-object v1

    .line 2011
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRoute(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 2052
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2053
    .local v0, "info":Landroid/support/v7/media/MediaRouter$RouteInfo;
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$200(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    .end local v0    # "info":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1989
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1990
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter;

    .line 1991
    .local v1, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v1, :cond_1

    .line 1992
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1993
    :cond_1
    iget-object v3, v1, Landroid/support/v7/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v3, p1, :cond_0

    move-object v2, v1

    .line 1999
    .end local v1    # "router":Landroid/support/v7/media/MediaRouter;
    .local v2, "router":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 1997
    .end local v2    # "router":Ljava/lang/Object;
    :cond_2
    new-instance v1, Landroid/support/v7/media/MediaRouter;

    invoke-direct {v1, p1}, Landroid/support/v7/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 1998
    .restart local v1    # "router":Landroid/support/v7/media/MediaRouter;
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 1999
    .restart local v2    # "router":Ljava/lang/Object;
    goto :goto_1
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 2088
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2091
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getSystemRouteByDescriptorId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2617
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-direct {p0, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v1

    .line 2618
    .local v1, "providerIndex":I
    if-ltz v1, :cond_0

    .line 2619
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2620
    .local v0, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v2

    .line 2621
    .local v2, "routeIndex":I
    if-ltz v2, :cond_0

    .line 2622
    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2625
    .end local v0    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .end local v2    # "routeIndex":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z
    .locals 6
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2111
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2134
    :cond_0
    :goto_0
    return v3

    .line 2116
    :cond_1
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v5, :cond_2

    move v3, v4

    .line 2117
    goto :goto_0

    .line 2121
    :cond_2
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2122
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 2123
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2124
    .local v1, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_4

    .line 2125
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2128
    :cond_4
    invoke-virtual {v1, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 2129
    goto :goto_0
.end method

.method public removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .prologue
    const/4 v3, 0x0

    .line 2223
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2224
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 2226
    invoke-virtual {p1, v3}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2228
    invoke-virtual {p1, v3}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2230
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2231
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v1, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2233
    sget-boolean v2, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2234
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2237
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2239
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public removeRemoteControlClient(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rcc"    # Ljava/lang/Object;

    .prologue
    .line 2637
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2638
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2639
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2640
    .local v1, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->disconnect()V

    .line 2642
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method public requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .prologue
    .line 2035
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v1, :cond_1

    .line 2036
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v1, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2038
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2039
    .local v0, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "delta"    # I

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 2049
    :cond_0
    return-void
.end method

.method public selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 2095
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2096
    return-void
.end method

.method public selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select removed route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :goto_0
    return-void

    .line 2103
    :cond_0
    # getter for: Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$300(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2104
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select disabled route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2107
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public sendControlRequest(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    .prologue
    const/4 v1, 0x0

    .line 2024
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2032
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    if-eqz p3, :cond_0

    .line 2030
    invoke-virtual {p3, v1, v1}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setMediaSession(Ljava/lang/Object;)V
    .locals 1
    .param p1, "session"    # Ljava/lang/Object;

    .prologue
    .line 2645
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setMediaSessionRecord(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V

    .line 2646
    return-void

    .line 2645
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2
    .param p1, "session"    # Landroid/support/v4/media/session/MediaSessionCompat;

    .prologue
    .line 2649
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2651
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setMediaSessionRecord(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;)V

    .line 2665
    :cond_0
    :goto_1
    return-void

    .line 2651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2652
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2653
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 2654
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    .line 2655
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2657
    :cond_3
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2658
    if-eqz p1, :cond_0

    .line 2659
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->addOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2660
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2661
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1982
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    .line 1984
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->start()V

    .line 1985
    return-void
.end method

.method public updateDiscoveryRequest()V
    .locals 13

    .prologue
    .line 2139
    const/4 v4, 0x0

    .line 2140
    .local v4, "discover":Z
    const/4 v0, 0x0

    .line 2141
    .local v0, "activeScan":Z
    new-instance v1, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    .line 2142
    .local v1, "builder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5

    .line 2143
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/media/MediaRouter;

    .line 2144
    .local v8, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v8, :cond_1

    .line 2145
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2147
    :cond_1
    iget-object v10, v8, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2148
    .local v3, "count":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 2149
    iget-object v10, v8, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    .line 2150
    .local v2, "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    iget-object v10, v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v1, v10}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    .line 2151
    iget v10, v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 2152
    const/4 v0, 0x1

    .line 2153
    const/4 v4, 0x1

    .line 2155
    :cond_2
    iget v10, v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    .line 2156
    iget-boolean v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-nez v10, :cond_3

    .line 2157
    const/4 v4, 0x1

    .line 2160
    :cond_3
    iget v10, v2, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_4

    .line 2161
    const/4 v4, 0x1

    .line 2148
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2166
    .end local v2    # "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    .end local v3    # "count":I
    .end local v6    # "j":I
    .end local v8    # "router":Landroid/support/v7/media/MediaRouter;
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v9

    .line 2169
    .local v9, "selector":Landroid/support/v7/media/MediaRouteSelector;
    :goto_2
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2170
    invoke-virtual {v10}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2171
    invoke-virtual {v10}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v10

    if-ne v10, v0, :cond_8

    .line 2199
    :cond_6
    return-void

    .line 2166
    .end local v9    # "selector":Landroid/support/v7/media/MediaRouteSelector;
    :cond_7
    sget-object v9, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    goto :goto_2

    .line 2174
    .restart local v9    # "selector":Landroid/support/v7/media/MediaRouteSelector;
    :cond_8
    invoke-virtual {v9}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v0, :cond_b

    .line 2176
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v10, :cond_6

    .line 2179
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 2184
    :goto_3
    sget-boolean v10, Landroid/support/v7/media/MediaRouter;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 2185
    const-string v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated discovery request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_9
    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    iget-boolean v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v10, :cond_a

    .line 2188
    const-string v10, "MediaRouter"

    const-string v11, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_a
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2196
    .local v7, "providerCount":I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_6

    .line 2197
    iget-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    # getter for: Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;
    invoke-static {v10}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$400(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v10, v11}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 2196
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2182
    .end local v7    # "providerCount":I
    :cond_b
    new-instance v10, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-direct {v10, v9, v0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    iput-object v10, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    goto :goto_3
.end method

.method updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 3
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .prologue
    .line 2243
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2244
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2246
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2247
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2249
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_0
    return-void
.end method
