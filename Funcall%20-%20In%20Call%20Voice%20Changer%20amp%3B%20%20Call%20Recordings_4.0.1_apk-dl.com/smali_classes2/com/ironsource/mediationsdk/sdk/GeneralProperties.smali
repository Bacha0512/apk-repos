.class public Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
.super Ljava/lang/Object;
.source "GeneralProperties.java"


# static fields
.field public static final ALLOW_LOCATION_SHARED_PREFS_KEY:Ljava/lang/String; = "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

.field public static final USER_ID_TYPE:Ljava/lang/String; = "userIdType"

.field private static mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;


# instance fields
.field private mProperties:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method public static declared-synchronized getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    .line 25
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/ironsource/mediationsdk/sdk/GeneralProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized putKeys(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 33
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
