.class public Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;
    }
.end annotation


# instance fields
.field private mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

.field private mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

.field private mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

.field private mRewardedInterstitialListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

.field private mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

.field private mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->start()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/OfferwallListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedInterstitialListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object v0
.end method

.method private canSendCallback(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "productListener"    # Ljava/lang/Object;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbackRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 46
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 373
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$17;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$17;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 383
    :cond_0
    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdClicked()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 318
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$14;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$14;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 7
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 221
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterstitialAdLoadFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 223
    if-eqz p1, :cond_0

    const/16 v3, 0x208

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 224
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v3, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 233
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 236
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$9;

    invoke-direct {v3, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$9;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 244
    :cond_1
    return-void

    .line 228
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialAdOpened()V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$10;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$10;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 7

    .prologue
    .line 197
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "onInterstitialAdReady()"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 207
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 209
    iget-object v3, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    new-instance v3, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$8;

    invoke-direct {v3, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$8;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    return-void

    .line 202
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialAdRewarded()V
    .locals 4

    .prologue
    .line 436
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdRewarded()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 438
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedInterstitialListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$20;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$20;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 447
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 8
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    const/4 v7, 0x1

    .line 276
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterstitialAdShowFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 278
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v4, 0x20c

    if-ne v3, v4, :cond_0

    .line 281
    const-string v3, "reason"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    :cond_0
    const-string v3, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 288
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 290
    iget-object v3, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    new-instance v3, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$12;

    invoke-direct {v3, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$12;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 298
    :cond_1
    return-void

    .line 284
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialAdShowSucceeded()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInterstitialAdShowSucceeded()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 264
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$11;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$11;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 5
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "result":Z
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    .line 364
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOfferwallAdCredited(credits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCredits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCreditsFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 368
    return v0
.end method

.method public onOfferwallAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 402
    return-void
.end method

.method public onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 7
    .param p1, "isAvailable"    # Z
    .param p2, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOfferwallAvailable(isAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "logString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 412
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 414
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    if-eqz p2, :cond_1

    .line 416
    const-string v4, "errorCode"

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_1
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x12e

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 422
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 424
    iget-object v4, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    new-instance v4, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;

    invoke-direct {v4, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 432
    :cond_2
    return-void

    .line 418
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOfferwallClosed()V
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 389
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$18;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$18;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$15;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 345
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 347
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$16;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$16;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 4

    .prologue
    .line 141
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdEnded()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$5;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$5;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 4
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 155
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdRewarded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$6;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$6;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 8
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    const/4 v7, 0x1

    .line 169
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoAdShowFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 171
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    const/16 v4, 0x20c

    if-ne v3, v4, :cond_0

    .line 175
    const-string v3, "reason"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    :cond_0
    const-string v3, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 182
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 184
    iget-object v3, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    new-instance v3, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$7;

    invoke-direct {v3, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$7;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 192
    :cond_1
    return-void

    .line 178
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoAdStarted()V
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onRewardedVideoAdStarted()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$4;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$4;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 7
    .param p1, "available"    # Z

    .prologue
    .line 102
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 113
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 115
    iget-object v3, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    new-instance v3, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$3;

    invoke-direct {v3, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$3;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void

    .line 108
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSegmentReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSegmentReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 453
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 0
    .param p1, "interstitialListener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .line 57
    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 0
    .param p1, "offerwallListener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .line 61
    return-void
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .locals 0
    .param p1, "rewardedInterstitialListener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedInterstitialListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .line 65
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .line 53
    return-void
.end method

.method public setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 0
    .param p1, "segmentListener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .line 69
    return-void
.end method
