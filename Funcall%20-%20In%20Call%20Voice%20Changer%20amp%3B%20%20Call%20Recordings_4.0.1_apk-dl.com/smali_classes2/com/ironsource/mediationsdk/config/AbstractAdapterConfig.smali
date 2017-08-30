.class public abstract Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
.super Ljava/lang/Object;
.source "AbstractAdapterConfig.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/ConfigValidator;


# instance fields
.field protected final MAX_ADS_KEY:Ljava/lang/String;

.field protected final MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

.field protected final REQUEST_URL_KEY:Ljava/lang/String;

.field private mMandatoryKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderName:Ljava/lang/String;

.field protected mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "maxAdsPerSession"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->MAX_ADS_KEY:Ljava/lang/String;

    .line 24
    const-string v0, "maxAdsPerIteration"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

    .line 25
    const-string v0, "requestUrl"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->REQUEST_URL_KEY:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 36
    iput-object p1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->initializeMandatoryFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->initializeOptionalFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 47
    :cond_1
    return-void
.end method

.method private checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 6
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p3, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/config/ConfigValidationResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "mandatoryKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 266
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 267
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Wrong configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "mandatory":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 273
    iget-object v3, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildKeyNotSetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 279
    :cond_4
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    iget-object v3, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    iget-object v3, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-static {v1, v3, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private isMandatoryField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOptionalField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 381
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 382
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 381
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method private validateAllFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 301
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 303
    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isMandatoryField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    invoke-virtual {p0, p1, v1, p2}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Invalid configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 328
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 311
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    invoke-virtual {p0, p1, v1, p2}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 313
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 315
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 316
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 321
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Unknown key in configuration - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract adapterPostValidation(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
.end method

.method public getMaxBannersPerSession()I
    .locals 4

    .prologue
    .line 112
    const v0, 0x7fffffff

    .line 115
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxISAdsPerIterationToPresent()I
    .locals 4

    .prologue
    .line 67
    const v0, 0x7fffffff

    .line 70
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerIteration"

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxInterstitialsPerSession()I
    .locals 4

    .prologue
    .line 98
    const v0, 0x7fffffff

    .line 101
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxRVAdsPerIterationToPresent()I
    .locals 4

    .prologue
    .line 55
    const v0, 0x7fffffff

    .line 58
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerIteration"

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMaxRewardedVideosPerSession()I
    .locals 4

    .prologue
    .line 84
    const v0, 0x7fffffff

    .line 87
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract initializeMandatoryFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract initializeOptionalFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isBannerConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 204
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 207
    .local v0, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 210
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 216
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 218
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 222
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid:result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 222
    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 226
    return-object v0
.end method

.method public isISConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 177
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 180
    .local v0, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 183
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 189
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 191
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 195
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid:result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 196
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 195
    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 199
    return-object v0
.end method

.method public isRVConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 150
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 153
    .local v0, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 156
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 162
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 164
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 168
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid:result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 172
    return-object v0
.end method

.method public updateAdUnitConfig(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "adUnitSettings"    # Lorg/json/JSONObject;
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 134
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 393
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 394
    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v1, "value should be \'true\'/\'false\'"

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 397
    :cond_0
    return-void
.end method

.method protected abstract validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
.end method

.method protected validateMaxVideos(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "maxVideos"    # I
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 357
    if-gez p1, :cond_0

    .line 358
    const-string v0, "maxVideos"

    iget-object v1, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxVideos value should be any integer >= 0, your value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 360
    :cond_0
    return-void
.end method

.method protected validateNonEmptyString(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 370
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v1, "value is empty"

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 373
    :cond_0
    return-void
.end method

.method protected abstract validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
.end method

.method public validateOptionalKeys(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":validateOptionalKeys"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 240
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 242
    .local v1, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 245
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 247
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":validateOptionalKeys("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method
