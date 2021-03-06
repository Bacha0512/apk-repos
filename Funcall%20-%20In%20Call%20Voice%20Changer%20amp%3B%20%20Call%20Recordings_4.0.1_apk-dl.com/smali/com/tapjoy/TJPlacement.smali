.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/tapjoy/TJPlacementListener;

.field private b:Lcom/tapjoy/TJCorePlacement;

.field private c:Lcom/tapjoy/TJPlacementListener;

.field private d:Lcom/tapjoy/TJPlacementVideoListener;

.field private e:Ljava/lang/String;

.field public pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .locals 3
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tapjoy/TJPlacementListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, v0, p3}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .locals 0
    .param p1, "corePlacement"    # Lcom/tapjoy/TJCorePlacement;
    .param p2, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 38
    return-void
.end method

.method private a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    .line 45
    if-eqz p2, :cond_0

    const-class v0, Lcom/tapjoy/TJPlacementListener;

    invoke-static {p2, v0}, Lcom/tapjoy/internal/ek;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementListener;

    :goto_0
    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tapjoy/FiveRocksIntegration;->addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 48
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/tapjoy/TJError;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0, p0, v1, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    .line 239
    return-void
.end method

.method public static dismissContent()V
    .locals 3

    .prologue
    .line 217
    const-string v0, "TJC_OPTION_DISMISS_CONTENT_ALL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const/4 v0, 0x0

    .line 219
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 223
    return-void
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/tapjoy/TJPlacementListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-object v0
.end method

.method public isContentAvailable()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 2055
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eq;->a(I)V

    .line 100
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    return v0
.end method

.method public isContentReady()Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 1059
    if-eqz v0, :cond_0

    .line 1060
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/eq;->a(I)V

    .line 88
    :goto_0
    return v0

    .line 1062
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/eq;->a(I)V

    goto :goto_0
.end method

.method public requestContent()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "TJPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestContent() called for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "placement"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "placement_type"

    iget-object v3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v3}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    .line 121
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "not connected"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 125
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v0, v4, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    .line 151
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "no context"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 134
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v0, v4, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "invalid name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 143
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v0, v4, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    goto :goto_0

    .line 148
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 3173
    if-nez p0, :cond_3

    .line 3174
    const-string v1, "Cannot request content from a NULL placement"

    .line 3175
    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v3, Lcom/tapjoy/TJError;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_1
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    goto :goto_0

    .line 3179
    :cond_3
    :try_start_1
    const-string v1, "REQUEST"

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 3181
    iget-wide v2, v0, Lcom/tapjoy/TJCorePlacement;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 3183
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content has not expired yet for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3828
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 3183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    iget-boolean v1, v0, Lcom/tapjoy/TJCorePlacement;->j:Z

    if-eqz v1, :cond_4

    .line 3186
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "from"

    const-string v3, "cache"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 3190
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJCorePlacement;->i:Z

    .line 3191
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 3192
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    throw v0

    .line 3194
    :cond_4
    :try_start_2
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "content_type"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "from"

    const-string v3, "cache"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 3198
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    goto :goto_1

    .line 3202
    :cond_5
    iget-boolean v1, v0, Lcom/tapjoy/TJCorePlacement;->j:Z

    if-eqz v1, :cond_6

    .line 3203
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->c(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "was_available"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    .line 3206
    :cond_6
    iget-boolean v1, v0, Lcom/tapjoy/TJCorePlacement;->k:Z

    if-eqz v1, :cond_7

    .line 3207
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->c(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "was_ready"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    .line 3211
    :cond_7
    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3212
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->a()V

    goto/16 :goto_1

    .line 3214
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3215
    const-string v2, "mediation_agent"

    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    const-string v2, "mediation_id"

    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3217
    iget-object v2, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getMediationURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public setAdapterVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "adapterVersion"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 7621
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setMediationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediationId"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 2625
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMediationName(Ljava/lang/String;)V
    .locals 4
    .param p1, "mediationName"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "TJPlacement"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMediationName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 196
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 7606
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    .line 7607
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->m:Ljava/lang/String;

    .line 7609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "v1/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mediation_content?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7612
    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJPlacementData;->setMediationURL(Ljava/lang/String;)V

    .line 200
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 204
    :cond_0
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoListener(Lcom/tapjoy/TJPlacementVideoListener;)V
    .locals 0
    .param p1, "videoListener"    # Lcom/tapjoy/TJPlacementVideoListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    .line 56
    return-void
.end method

.method public showContent()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "TJPlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showContent() called for placement "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, v2, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 4067
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/eq;->a(I)V

    .line 161
    const-string v2, "TJPlacement.showContent"

    invoke-static {v2}, Lcom/tapjoy/internal/fa;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v2

    const-string v3, "placement"

    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "placement_type"

    iget-object v3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v3}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "content_type"

    iget-object v3, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v3}, Lcom/tapjoy/TJCorePlacement;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    .line 166
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const-string v0, "TJPlacement"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "No placement content available. Can not show content for non-200 placement."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 168
    const-string v0, "TJPlacement.showContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "no content"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 4449
    if-nez p0, :cond_1

    .line 4450
    const-string v0, "Cannot show content from a NULL placement"

    .line 4451
    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v3, Lcom/tapjoy/TJError;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_1
    const-string v0, "TJPlacement.showContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    goto :goto_0

    .line 4455
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4456
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Only one view can be presented at a time."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    const-string v0, "TJPlacement.showContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "another content showing"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    const-string v1, "TJPlacement.showContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    throw v0

    .line 4462
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4463
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v3, "Will close N2E content."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4464
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 4467
    :cond_3
    const-string v2, "SHOW"

    invoke-virtual {v1, v2, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 4468
    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    const-string v3, "TJPlacement.showContent"

    invoke-static {v3}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v3

    .line 5071
    iput-object v3, v2, Lcom/tapjoy/internal/eq;->c:Lcom/tapjoy/internal/fa$a;

    .line 4473
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4476
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    if-eqz v3, :cond_4

    .line 4477
    iget-object v0, v1, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    invoke-interface {v0}, Lcom/tapjoy/mediation/TJCustomPlacement;->showContent()V

    .line 4523
    :goto_2
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tapjoy/TJCorePlacement;->e:J

    .line 4526
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 4527
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/tapjoy/TJCorePlacement;->k:Z

    goto :goto_1

    .line 4478
    :cond_4
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    if-eqz v3, :cond_8

    .line 4480
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    .line 6039
    iput-object v2, v3, Lcom/tapjoy/internal/gb;->k:Ljava/lang/String;

    .line 6777
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    if-nez v3, :cond_6

    .line 6778
    const/4 v0, 0x1

    .line 4481
    :cond_5
    :goto_3
    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 4483
    new-instance v0, Lcom/tapjoy/TJCorePlacement$7;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJCorePlacement$7;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 4504
    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    iput-object v0, v2, Lcom/tapjoy/internal/gb;->j:Lcom/tapjoy/internal/fn;

    .line 4506
    new-instance v0, Lcom/tapjoy/TJCorePlacement$8;

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCorePlacement$8;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    invoke-static {v0}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 6780
    :cond_6
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    instance-of v3, v3, Lcom/tapjoy/internal/fq;

    if-eqz v3, :cond_7

    .line 6781
    const/4 v0, 0x3

    goto :goto_3

    .line 6782
    :cond_7
    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    instance-of v3, v3, Lcom/tapjoy/internal/fz;

    if-eqz v3, :cond_5

    .line 6783
    const/4 v0, 0x2

    goto :goto_3

    .line 4513
    :cond_8
    iget-object v0, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 4516
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4517
    const-string v2, "placement_data"

    iget-object v3, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4518
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4519
    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
