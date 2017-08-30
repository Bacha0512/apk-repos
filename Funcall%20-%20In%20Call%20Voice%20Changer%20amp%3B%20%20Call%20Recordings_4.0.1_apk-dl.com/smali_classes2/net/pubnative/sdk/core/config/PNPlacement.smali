.class public Lnet/pubnative/sdk/core/config/PNPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/config/PNPlacement$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAppToken:Ljava/lang/String;

.field protected mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentNetworkIndex:I

.field protected mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

.field protected mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

.field protected mPlacementName:Ljava/lang/String;

.field protected mRequestID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/PNPlacement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFormatCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->ad_format_code:Ljava/lang/String;

    .line 142
    :cond_0
    return-object v0
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mAppToken:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    return-object v0
.end method

.method public getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getNetwork(I)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkIndex()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    return v0
.end method

.method public getCurrentNetworkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_0

    .line 229
    iget-object v0, v1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    .line 231
    :cond_0
    return-object v0
.end method

.method public getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getPriorityRule(I)Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryRule()Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    .line 155
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork(I)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getPriorityRule(I)Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    iget-object v2, v1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    iget-object v0, v1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getNetwork(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    .line 263
    :cond_0
    return-object v0
.end method

.method public getNetwork(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getNetwork(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    .line 277
    :cond_0
    return-object v0
.end method

.method public getPriorities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    .line 217
    :cond_0
    return-object v0
.end method

.method public getPriorityRule(I)Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->getPriorityRule(I)Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v0

    .line 204
    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    :cond_0
    return v0
.end method

.method public getTrackingUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mRequestID:Ljava/lang/String;

    return-object v0
.end method

.method protected invokeOnLoadFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/core/config/PNPlacement$Listener;->onPlacementLoadFail(Lnet/pubnative/sdk/core/config/PNPlacement;Ljava/lang/Exception;)V

    .line 373
    :cond_0
    return-void
.end method

.method protected invokeOnReady(Z)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/core/config/PNPlacement$Listener;->onPlacementReady(Lnet/pubnative/sdk/core/config/PNPlacement;Z)V

    .line 367
    :cond_0
    return-void
.end method

.method public isAdCacheEnabled()Z
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-boolean v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->ad_cache:Z

    .line 290
    :cond_0
    return v0
.end method

.method protected isDisabled()Z
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x1

    .line 327
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 328
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    .line 329
    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isDisabled()Z

    move-result v0

    .line 331
    :cond_0
    return v0
.end method

.method protected isFrequencyCapActive()Z
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 337
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    .line 338
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isFrequencyCapReached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 340
    :cond_0
    return v0
.end method

.method protected isPacingCapActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 344
    .line 345
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    .line 347
    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->getPacingOverdueCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementName:Ljava/lang/String;

    invoke-static {v2}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPacingCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 349
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/config/PNPlacement$Listener;)V
    .locals 4

    .prologue
    .line 87
    if-nez p5, :cond_0

    .line 88
    sget-object v0, Lnet/pubnative/sdk/core/config/PNPlacement;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null, dropping this call"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p5, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mListener:Lnet/pubnative/sdk/core/config/PNPlacement$Listener;

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    if-eqz v0, :cond_3

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "initialize - Error: placement is loaded"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 98
    :cond_3
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mAppToken:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementName:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    .line 102
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mRequestID:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mAppToken:Ljava/lang/String;

    new-instance v2, Lnet/pubnative/sdk/core/config/PNPlacement$1;

    invoke-direct {v2, p0}, Lnet/pubnative/sdk/core/config/PNPlacement$1;-><init>(Lnet/pubnative/sdk/core/config/PNPlacement;)V

    invoke-static {v0, v1, v2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getConfig(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V

    goto :goto_0
.end method

.method protected loadPlacement(Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    .line 305
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_CONFIG_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 323
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mConfigModel:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getPlacement(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    .line 309
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    if-nez v0, :cond_2

    .line 310
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mPlacementModel:Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 314
    :cond_3
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_CONFIG_EMPTY:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 315
    :cond_4
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/PNPlacement;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 316
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_DISABLED:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 317
    :cond_5
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/PNPlacement;->isFrequencyCapActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_FREQUENCY_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 320
    :cond_6
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/PNPlacement;->isPacingCapActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->invokeOnReady(Z)V

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement;->mCurrentNetworkIndex:I

    .line 298
    return-void
.end method
