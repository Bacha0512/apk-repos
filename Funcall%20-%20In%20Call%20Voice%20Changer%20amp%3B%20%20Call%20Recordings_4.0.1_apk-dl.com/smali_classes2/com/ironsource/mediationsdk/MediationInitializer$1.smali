.class Lcom/ironsource/mediationsdk/MediationInitializer$1;
.super Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    .line 131
    .local v3, "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v5

    .line 133
    .local v5, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "userGenerated"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "userIdType"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "userId"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 158
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    const-string v7, "appKey"

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    invoke-virtual {v3, v7, v8, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v7

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$502(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 164
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 165
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 167
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 169
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitiatedAdUnits()Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 171
    .local v4, "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->wasInitRevived()Z
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v7

    invoke-interface {v4, v0, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitSuccess(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    .end local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    .end local v3    # "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    .end local v5    # "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 136
    .restart local v3    # "ironSourceObject":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v5    # "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 138
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "GAID"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    :goto_3
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_4
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 142
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, "UUID"

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 144
    :cond_5
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v7, ""

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 175
    .restart local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    :cond_6
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 176
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v1

    .line 177
    .local v1, "data":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    if-eqz v1, :cond_7

    .line 178
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 179
    :cond_7
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v7}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 183
    .end local v0    # "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    .end local v1    # "data":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :cond_8
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 184
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 185
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 186
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 187
    .restart local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    const-string v7, "serverResponseIsNotValid"

    invoke-interface {v4, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_4

    .line 193
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_9
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 194
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1402(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 195
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1500(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v6, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 197
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1500(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;I)I

    .line 199
    :cond_a
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I
    invoke-static {v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v7

    if-ne v6, v7, :cond_e

    .line 200
    :cond_b
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 201
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const/4 v7, 0x1

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 202
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 203
    const-string v6, "noServerResponse"

    iput-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    .line 205
    :cond_c
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 206
    .restart local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-interface {v4, v7}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_5

    .line 209
    .end local v4    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_d
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 210
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Mediation availability false reason: No server response"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 214
    :cond_e
    iget-object v6, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # operator++ for: Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I
    invoke-static {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1208(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
