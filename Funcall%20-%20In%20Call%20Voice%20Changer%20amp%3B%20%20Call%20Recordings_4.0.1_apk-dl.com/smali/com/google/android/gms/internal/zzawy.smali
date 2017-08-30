.class public final Lcom/google/android/gms/internal/zzawy;
.super Lcom/google/android/gms/internal/zzaxt;


# static fields
.field private static NAMESPACE:Ljava/lang/String;

.field private static final zzapq:Lcom/google/android/gms/internal/zzayo;


# instance fields
.field private final zzBT:Landroid/content/SharedPreferences;

.field private final zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

.field private final zzawR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawT:Ljava/lang/String;

.field private zzawU:Lcom/google/android/gms/internal/zzaxl;

.field private zzawV:Z

.field private zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

.field private zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

.field private zzawY:Ljava/lang/String;

.field private zzawZ:Lorg/json/JSONObject;

.field private zzaxa:J

.field private zzaxb:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

.field private zzaxc:Ljava/lang/String;

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.cast.games"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaye;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzawy;->NAMESPACE:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "GameManagerChannel"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$CastApi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzawy;->NAMESPACE:Ljava/lang/String;

    const-string v2, "CastGameManagerChannel"

    invoke-direct {p0, v0, v2, v4}, Lcom/google/android/gms/internal/zzaxt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawV:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "castSessionId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "googleApiClient needs to be connected and contain the Cast.API API."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzvw:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawS:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawy;->zzawT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawy;->zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s.%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    const-string v7, "game_manager_channel_data"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzBT:Landroid/content/SharedPreferences;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    new-instance v0, Lcom/google/android/gms/internal/zzaxn;

    const-string v3, ""

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ""

    const/4 v7, -0x1

    move v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaxn;-><init>(IILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    return-void
.end method

.method private final declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawU:Lcom/google/android/gms/internal/zzaxl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawy;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawy;Lcom/google/android/gms/internal/zzaxl;)Lcom/google/android/gms/internal/zzaxl;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawy;->zzaxc:Ljava/lang/String;

    return-object p1
.end method

.method private final zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extraMessageData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerId"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerToken"

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzawy;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "JSONException when trying to create a message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawy;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzayt;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzawy;->zza(Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzayt;)V

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/zzaxm;)V
    .locals 8

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxt:I

    if-ne v1, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxp;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaxo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxp;->getPlayerState()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxp;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v3, v2, v4, v0, v6}, Lcom/google/android/gms/internal/zzaxo;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Z)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/zzaxn;

    iget v1, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxx:I

    iget v2, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxw:I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxA:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxz:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzawy;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaxl;->zzox()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzawy;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzaxl;->getMaxPlayers()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaxn;-><init>(IILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxn:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawY:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaxm;->zzaxp:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawZ:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private final zza(Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzayt;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzawy;->zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    invoke-interface {p4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzayt;->zza(JILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v1, "Not sending request because it was invalid."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzayu;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzawy;->zzvw:Lcom/google/android/gms/common/util/zze;

    const-wide/16 v6, 0x7530

    invoke-direct {v1, v4, v6, v7}, Lcom/google/android/gms/internal/zzayu;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    invoke-virtual {v1, v2, v3, p4}, Lcom/google/android/gms/internal/zzayu;->zza(JLcom/google/android/gms/internal/zzayt;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzawy;->zzawS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzawy;->zzZ(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawy;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v5, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaxd;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzaxd;-><init>(Lcom/google/android/gms/internal/zzawy;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzawy;)Lcom/google/android/gms/cast/Cast$CastApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

    return-object v0
.end method

.method private final zzb(JILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzayu;->zzc(JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzov()V

    return-void
.end method

.method private final declared-synchronized zzcg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzou()V

    return-void
.end method

.method private final declared-synchronized zzot()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to perform an operation on the GameManagerChannel before it is initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawy;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to perform an operation on the GameManagerChannel after it has been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method private final declared-synchronized zzou()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "castSessionId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzawT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerTokenMap"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzBT:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "save_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Error while saving data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzov()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzBT:Landroid/content/SharedPreferences;

    const-string v1, "save_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "castSessionId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzawT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "playerTokenMap"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Error while loading data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic zzow()Lcom/google/android/gms/internal/zzayo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized dispose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawZ:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawV:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawy;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Exception while detaching game manager channel."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCurrentState()Lcom/google/android/gms/cast/games/GameManagerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLastUsedPlayerId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDisposed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendGameMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzot()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzawy;->zzaxa:J

    const/4 v5, 0x7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzawy;->zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzasb:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawy;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendGameRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzaxc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzaxc;-><init>(Lcom/google/android/gms/internal/zzawy;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
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

.method public final declared-synchronized setListener(Lcom/google/android/gms/cast/games/GameManagerClient$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzawy;->zzaxb:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/cast/games/GameManagerClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/games/GameManagerClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzawz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawz;-><init>(Lcom/google/android/gms/internal/zzawy;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
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

.method public final declared-synchronized zza(Ljava/lang/String;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzot()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzXj:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzaxb;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzaxb;-><init>(Lcom/google/android/gms/internal/zzawy;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
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

.method public final zzc(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzawy;->zzb(JILjava/lang/Object;)V

    return-void
.end method

.method public final zzch(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "message received: %s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaxm;->zzo(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaxm;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v2, "Could not parse game manager message from string: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v4, "Message is malformed (%s); ignoring: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    aput-object p1, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/google/android/gms/internal/zzaxm;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawy;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxt:I

    if-ne v0, v3, :cond_7

    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawR:Ljava/util/Map;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxn:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxB:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->zzou()V

    :cond_3
    iget v0, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxu:I

    if-nez v0, :cond_8

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzawy;->zza(Lcom/google/android/gms/internal/zzaxm;)V

    :goto_2
    iget v0, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxu:I

    packed-switch v0, :pswitch_data_0

    sget-object v3, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const/16 v5, 0x35

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown GameManager protocol status code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xd

    :goto_3
    if-eqz v2, :cond_4

    iget-wide v2, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxo:J

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzawy;->zzb(JILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxb:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxb:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawW:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/games/GameManagerClient$Listener;->onStateChanged(Lcom/google/android/gms/cast/games/GameManagerState;Lcom/google/android/gms/cast/games/GameManagerState;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawZ:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawY:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxb:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzawY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzawZ:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/games/GameManagerClient$Listener;->onGameMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6
    iput-object v7, p0, Lcom/google/android/gms/internal/zzawy;->zzawX:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v7, p0, Lcom/google/android/gms/internal/zzawy;->zzawY:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/gms/internal/zzawy;->zzawZ:Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/zzawy;->zzapq:Lcom/google/android/gms/internal/zzayo;

    const-string v5, "Not updating from game message because the message contains error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, v4, Lcom/google/android/gms/internal/zzaxm;->zzaxu:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/zzayo;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x867

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x866

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x7d3

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x7d1

    goto :goto_3

    :pswitch_4
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzz(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/zzayu;->zzd(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzayu;->zzrl:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzawS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayu;->zzoO()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
