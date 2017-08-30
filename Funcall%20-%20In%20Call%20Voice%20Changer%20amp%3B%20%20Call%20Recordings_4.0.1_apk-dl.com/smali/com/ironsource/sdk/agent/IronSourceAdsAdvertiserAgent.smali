.class public Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;
.super Ljava/lang/Object;
.source "IronSourceAdsAdvertiserAgent.java"

# interfaces
.implements Lcom/ironsource/sdk/SSAAdvertiser;


# static fields
.field private static final TAG:Ljava/lang/String; = "IronSourceAdsAdvertiserAgent"

.field static sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;

    invoke-direct {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;

    .line 25
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;
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
.method public reportAppStarted(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    return-void
.end method
