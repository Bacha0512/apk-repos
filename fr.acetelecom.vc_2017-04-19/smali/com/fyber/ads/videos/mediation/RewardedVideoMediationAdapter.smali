.class public abstract Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final START_TIMEOUT_DELAY:I = 0x1194

.field public static final VALIDATION_TIMEOUT_DELAY:I = 0x1194


# instance fields
.field private a:Lcom/fyber/ads/videos/mediation/a;

.field private b:Ljava/util/Map;
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

.field private c:Lcom/fyber/ads/videos/mediation/b;

.field private d:Ljava/util/Map;
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

.field private e:Z

.field private f:Landroid/os/Handler;

.field protected mAdapter:Lcom/fyber/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/MediationAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->e:Z

    iput-object p1, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;-><init>(Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/fyber/ads/videos/mediation/b;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/fyber/ads/videos/mediation/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->e:Z

    iput-object p2, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->c:Lcom/fyber/ads/videos/mediation/b;

    iput-object p3, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->startVideo(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/ads/videos/mediation/a;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/ads/videos/mediation/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a:Lcom/fyber/ads/videos/mediation/a;

    iput-object p3, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    return-void
.end method

.method protected clearVideoEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->c:Lcom/fyber/ads/videos/mediation/b;

    iput-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->d:Ljava/util/Map;

    return-void
.end method

.method public getMediationAdapter()Lcom/fyber/mediation/MediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPrecachingDisabled()Z
    .locals 1

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v0

    return v0
.end method

.method protected notifyCloseEngagement()V
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Closed:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->clearVideoEvent()V

    return-void

    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Aborted:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    goto :goto_0
.end method

.method protected notifyVideoError()V
    .locals 1

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->clearVideoEvent()V

    return-void
.end method

.method protected notifyVideoStarted()V
    .locals 1

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V

    return-void
.end method

.method protected sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a:Lcom/fyber/ads/videos/mediation/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a:Lcom/fyber/ads/videos/mediation/a;

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/fyber/ads/videos/mediation/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a:Lcom/fyber/ads/videos/mediation/a;

    iput-object v4, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->b:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    const-string v0, "RewardedVideoMediationAdapter"

    const-string v1, "No validation event listener"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->c:Lcom/fyber/ads/videos/mediation/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {p1, v0}, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->c:Lcom/fyber/ads/videos/mediation/b;

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/fyber/ads/videos/mediation/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoEvent;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "RewardedVideoMediationAdapter"

    const-string v1, "No video event listener"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setVideoPlayed()V
    .locals 1

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Finished:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->e:Z

    return-void
.end method

.method public abstract startPrecaching()V
.end method

.method public abstract startVideo(Landroid/app/Activity;)V
.end method

.method public abstract videosAvailable(Landroid/content/Context;)V
.end method
