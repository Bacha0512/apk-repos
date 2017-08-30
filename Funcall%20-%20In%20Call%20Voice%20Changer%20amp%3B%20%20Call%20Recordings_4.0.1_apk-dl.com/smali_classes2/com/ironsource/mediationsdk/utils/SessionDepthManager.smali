.class public Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
.super Ljava/lang/Object;
.source "SessionDepthManager.java"


# static fields
.field public static final BANNER:I = 0x3

.field public static final INTERSTITIAL:I = 0x2

.field public static final NONE:I = -0x1

.field public static final OFFERWALL:I = 0x0

.field public static final REWARDEDVIDEO:I = 0x1

.field private static mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;


# instance fields
.field private mBannerDepth:I

.field private mInterstitialDepth:I

.field private mOfferwallDepth:I

.field private mRewardedVideoDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    .line 9
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    .line 10
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getSessionDepth(I)I
    .locals 1
    .param p1, "adUnit"    # I

    .prologue
    .line 54
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    .line 56
    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    goto :goto_0

    .line 59
    :pswitch_1
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    goto :goto_0

    .line 62
    :pswitch_2
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    goto :goto_0

    .line 65
    :pswitch_3
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized increaseSessionDepth(I)V
    .locals 1
    .param p1, "adUnit"    # I

    .prologue
    .line 30
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 32
    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    goto :goto_0

    .line 40
    :pswitch_2
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    goto :goto_0

    .line 44
    :pswitch_3
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
