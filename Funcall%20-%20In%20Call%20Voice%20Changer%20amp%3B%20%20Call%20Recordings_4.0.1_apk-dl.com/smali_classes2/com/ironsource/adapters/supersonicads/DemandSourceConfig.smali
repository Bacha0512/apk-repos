.class public Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;
.super Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
.source "DemandSourceConfig.java"


# static fields
.field static final APPLICATION_USER_AGE_GROUP:Ljava/lang/String; = "applicationUserAgeGroup"

.field static final APPLICATION_USER_GENDER:Ljava/lang/String; = "applicationUserGender"

.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field static final CLIENT_SIDE_CALLBACKS:Ljava/lang/String; = "useClientSideCallbacks"

.field private static final CUSTOM_PARAM_PREFIX:Ljava/lang/String; = "custom_"

.field static final CUSTOM_SEGMENT:Ljava/lang/String; = "custom_Segment"

.field static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final ITEM_NAME:Ljava/lang/String; = "itemName"

.field static final LANGUAGE:Ljava/lang/String; = "language"

.field static final MAX_VIDEO_LENGTH:Ljava/lang/String; = "maxVideoLength"


# instance fields
.field private final AGE:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final APPLICATION_PRIVATE_KEY:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private final GENDER:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final USER_ID:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;-><init>(Ljava/lang/String;)V

    .line 17
    const-class v0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "applicationKey"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->APPLICATION_KEY:Ljava/lang/String;

    .line 22
    const-string v0, "userId"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->USER_ID:Ljava/lang/String;

    .line 30
    const-string v0, "age"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->AGE:Ljava/lang/String;

    .line 31
    const-string v0, "gender"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->GENDER:Ljava/lang/String;

    .line 34
    const-string v0, "privateKey"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->APPLICATION_PRIVATE_KEY:Ljava/lang/String;

    .line 39
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 43
    const-string v0, "controllerUrl"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    .line 44
    const-string v0, "debugMode"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    .line 45
    const-string v0, "controllerConfig"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private validateAgeGroup(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, "age":I
    if-ltz v0, :cond_0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 345
    :cond_0
    const-string v2, "applicationUserAgeGroup"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "applicationUserAgeGroup"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateApplicationKey(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 436
    if-eqz p1, :cond_2

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 442
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 443
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey value should contains only english characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 454
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey length should be between 5-10 characters"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 452
    :cond_2
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey value is missing"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateClientSideCallbacks(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 369
    const-string v0, "useClientSideCallbacks"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 370
    return-void
.end method

.method private validateDynamicUrl(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "controllerUrl"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "controllerUrl is missing"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 433
    :cond_0
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 358
    const-string v1, "male"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "female"

    .line 359
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    .line 360
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const-string v1, "gender"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateItemCount(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 279
    .local v1, "itemCount":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0x186a0

    if-le v1, v2, :cond_1

    .line 280
    :cond_0
    const-string v2, "itemCount"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "itemCount":I
    :cond_1
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "itemCount"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateItemName(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 288
    if-eqz p1, :cond_2

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 291
    :cond_0
    const-string v0, "itemName"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    const-string v0, "itemName"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateLanguage(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 329
    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 332
    const-string v0, "^[a-zA-Z]*$"

    .line 333
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 334
    :cond_0
    const-string v1, "language"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 338
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    const-string v1, "language"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateMaxVideoLength(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, "age":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 320
    :cond_0
    const-string v2, "maxVideoLength"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "maxVideoLength"

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validatePrivateKey(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 299
    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 301
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 302
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey should contains only characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 313
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 311
    :cond_2
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 408
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_0
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    :cond_1
    const-string v0, "itemName, itemCount or privateKey"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "configure itemName/itemCount requires the following configurations: itemName, itemCount and privateKey"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 418
    :cond_2
    return-void
.end method

.method private validateUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 421
    if-eqz p1, :cond_2

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 423
    :cond_0
    const-string v0, "userId"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "userId value should be between 1-64 characters"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    const-string v0, "userId"

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "userId is missing"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method


# virtual methods
.method protected adapterPostValidation(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 394
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method getCampaignId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "campaignId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISControllerConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-string v0, ""

    .line 101
    .local v0, "config":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method public getISDebugMode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "mode":I
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method getISDynamicControllerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getISUserAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getISUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 7

    .prologue
    .line 131
    const/4 v1, -0x1

    .line 133
    .local v1, "itemCount":I
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "itemCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "itemCountString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .end local v2    # "itemCountString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":getItemCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxISAdsPerIteration()I
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxISAdsPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method getMaxRVAdsPerIteration()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxRVAdsPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method public getMaxVideoLength()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMediationSegment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRVControllerConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const-string v0, ""

    .line 90
    .local v0, "config":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public getRVDebugMode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "mode":I
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public getRVDynamicControllerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRVUserAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRVUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeMandatoryFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    return-object v0
.end method

.method protected initializeOptionalFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "useClientSideCallbacks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v1, "maxAdsPerSession"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v1, "maxAdsPerIteration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "SDKPluginType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "requestUrl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-object v0
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 2
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public setUserAgeGroup(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 179
    const-string v0, "0"

    .line 181
    .local v0, "ageGroup":Ljava/lang/String;
    const/16 v1, 0xd

    if-lt p1, v1, :cond_1

    const/16 v1, 0x11

    if-gt p1, v1, :cond_1

    .line 182
    const-string v0, "1"

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void

    .line 183
    :cond_1
    const/16 v1, 0x12

    if-lt p1, v1, :cond_2

    const/16 v1, 0x14

    if-gt p1, v1, :cond_2

    .line 184
    const-string v0, "2"

    goto :goto_0

    .line 185
    :cond_2
    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    const/16 v1, 0x18

    if-gt p1, v1, :cond_3

    .line 186
    const-string v0, "3"

    goto :goto_0

    .line 187
    :cond_3
    const/16 v1, 0x19

    if-lt p1, v1, :cond_4

    const/16 v1, 0x22

    if-gt p1, v1, :cond_4

    .line 188
    const-string v0, "4"

    goto :goto_0

    .line 189
    :cond_4
    const/16 v1, 0x23

    if-lt p1, v1, :cond_5

    const/16 v1, 0x2c

    if-gt p1, v1, :cond_5

    .line 190
    const-string v0, "5"

    goto :goto_0

    .line 191
    :cond_5
    const/16 v1, 0x2d

    if-lt p1, v1, :cond_6

    const/16 v1, 0x36

    if-gt p1, v1, :cond_6

    .line 192
    const-string v0, "6"

    goto :goto_0

    .line 193
    :cond_6
    const/16 v1, 0x37

    if-lt p1, v1, :cond_7

    const/16 v1, 0x40

    if-gt p1, v1, :cond_7

    .line 194
    const-string v0, "7"

    goto :goto_0

    .line 195
    :cond_7
    const/16 v1, 0x41

    if-le p1, v1, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    .line 196
    const-string v0, "8"

    goto :goto_0
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method protected validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "value":Ljava/lang/String;
    const-string v2, "applicationKey"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-direct {p0, v1, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateApplicationKey(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 389
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 381
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "userId"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    invoke-direct {p0, v1, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 384
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "controllerUrl"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-direct {p0, v1, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateDynamicUrl(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 244
    :try_start_0
    const-string v3, "maxAdsPerSession"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, "maxVideos":I
    invoke-virtual {p0, v1, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateMaxVideos(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 273
    .end local v1    # "maxVideos":I
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v3, "maxAdsPerIteration"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const-string v3, "debugMode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    const-string v3, "controllerConfig"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "value":Ljava/lang/String;
    const-string v3, "useClientSideCallbacks"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateClientSideCallbacks(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "applicationUserGender"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 257
    :cond_3
    const-string v3, "applicationUserAgeGroup"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateAgeGroup(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 259
    :cond_4
    const-string v3, "language"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 260
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateLanguage(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 261
    :cond_5
    const-string v3, "maxVideoLength"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 262
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateMaxVideoLength(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 263
    :cond_6
    const-string v3, "privateKey"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 264
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validatePrivateKey(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 265
    :cond_7
    const-string v3, "itemName"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 266
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateItemName(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 267
    :cond_8
    const-string v3, "itemCount"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-direct {p0, v2, p3}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->validateItemCount(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
