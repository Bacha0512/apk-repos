.class public Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
.super Ljava/lang/Object;
.source "ProviderSettingsHolder.java"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;


# instance fields
.field private mProviderSettingsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public static declared-synchronized getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 22
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .locals 1
    .param p1, "providerSettings"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method

.method public containsProviderSettings(Ljava/lang/String;)Z
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 48
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 52
    .end local v0    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fillSubProvidersDetails()V
    .locals 6

    .prologue
    .line 62
    iget-object v3, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 63
    .local v2, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 65
    .local v1, "isSubProvider":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v0

    .line 70
    .local v0, "commonProviderSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 71
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 63
    .end local v0    # "commonProviderSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v1    # "isSubProvider":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 75
    .end local v2    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_2
    return-void
.end method

.method public getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 36
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    .end local v0    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :goto_0
    return-object v0

    .line 40
    :cond_1
    new-instance v1, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "ps":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    move-object v0, v1

    .line 43
    goto :goto_0
.end method

.method public getProviderSettingsArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method
