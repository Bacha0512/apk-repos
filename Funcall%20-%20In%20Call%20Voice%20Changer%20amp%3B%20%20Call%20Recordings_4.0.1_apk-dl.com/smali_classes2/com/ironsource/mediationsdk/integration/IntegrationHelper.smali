.class public Lcom/ironsource/mediationsdk/integration/IntegrationHelper;
.super Ljava/lang/Object;
.source "IntegrationHelper.java"


# static fields
.field private static SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "IntegrationHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3.2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    return-void
.end method

.method private static validateActivities(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 255
    const/4 v6, 0x1

    .line 257
    .local v6, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 258
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "IntegrationHelper"

    const-string v8, "*** Activities ***"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, "act":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 263
    .local v4, "localClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 268
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v6, 0x0

    .line 275
    invoke-static {v0, v9}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "localClass":Ljava/lang/Class;
    :cond_0
    const/4 v6, 0x0

    .line 271
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    .end local v0    # "act":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :cond_1
    return v6
.end method

.method private static validateAdapter(Lcom/ironsource/mediationsdk/integration/AdapterObject;)Z
    .locals 13
    .param p0, "adapter"    # Lcom/ironsource/mediationsdk/integration/AdapterObject;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 196
    const/4 v4, 0x0

    .line 199
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getAdapterName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 201
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v7, "VERSION"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 202
    .local v6, "versionField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "adapterVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v7, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 213
    sget-object v7, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String;

    aget-object v5, v7, v2

    .line 214
    .local v5, "sdkCompatVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 215
    const/4 v4, 0x1

    .line 219
    .end local v5    # "sdkCompatVersion":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_3

    .line 220
    const-string v7, "Adapter version"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsVerified(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    .end local v0    # "adapterVersion":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "versionField":Ljava/lang/reflect/Field;
    :goto_1
    if-eqz v4, :cond_1

    .line 234
    const-string v7, "Adapter"

    invoke-static {v7, v12}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsVerified(Ljava/lang/String;Z)V

    .line 236
    :cond_1
    return v4

    .line 212
    .restart local v0    # "adapterVersion":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "sdkCompatVersion":Ljava/lang/String;
    .restart local v6    # "versionField":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v5    # "sdkCompatVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v7, "IntegrationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adapter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is incompatible with SDK version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", please update your adapter to version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 225
    .end local v0    # "adapterVersion":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "versionField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "IntegrationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adapter version is incompatible with SDK version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", please update your adapter to version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->SDK_COMPATIBILITY_VERSION_ARR:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "Adapter"

    invoke-static {v7, v11}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private static validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 338
    const/4 v6, 0x1

    .line 340
    .local v6, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 341
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "IntegrationHelper"

    const-string v8, "*** Broadcast Receivers ***"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "broadcastReceiver":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 346
    .local v4, "localClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 350
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 351
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v6, 0x0

    .line 358
    invoke-static {v0, v9}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 353
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "localClass":Ljava/lang/Class;
    :cond_0
    const/4 v6, 0x0

    .line 354
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    .end local v0    # "broadcastReceiver":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "localClass":Ljava/lang/Class;
    :cond_1
    return v6
.end method

.method private static validateExternalLibraries(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "externalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 321
    .local v3, "result":Z
    const-string v4, "IntegrationHelper"

    const-string v5, "*** External Libraries ***"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 325
    .local v1, "externalLibrary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 327
    .local v2, "localClass":Ljava/lang/Class;
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v2    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    .line 330
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "externalLibrary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return v3
.end method

.method private static validateGooglePlayServices(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    const-string v1, "com.google.android.gms.version"

    .line 165
    .local v1, "mGooglePlayServicesMetaData":Ljava/lang/String;
    const-string v0, "Google Play Services"

    .line 167
    .local v0, "mGooglePlayServices":Ljava/lang/String;
    new-instance v2, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;-><init>(Landroid/app/Activity;)V

    .line 192
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method public static validateIntegration(Landroid/app/Activity;)V
    .locals 54
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    const-string v34, "IronSource"

    .line 34
    .local v34, "ironSource":Ljava/lang/String;
    const-string v18, "AdColony"

    .line 35
    .local v18, "adcolony":Ljava/lang/String;
    const-string v22, "AppLovin"

    .line 36
    .local v22, "applovin":Ljava/lang/String;
    const-string v23, "Chartboost"

    .line 37
    .local v23, "chartboost":Ljava/lang/String;
    const-string v30, "HyprMX"

    .line 38
    .local v30, "hyprmx":Ljava/lang/String;
    const-string v41, "UnityAds"

    .line 39
    .local v41, "unityads":Ljava/lang/String;
    const-string v43, "Vungle"

    .line 40
    .local v43, "vungle":Ljava/lang/String;
    const-string v33, "InMobi"

    .line 41
    .local v33, "inmobi":Ljava/lang/String;
    const-string v25, "Facebook"

    .line 42
    .local v25, "facebook":Ljava/lang/String;
    const-string v36, "MediaBrix"

    .line 43
    .local v36, "mediaBrix":Ljava/lang/String;
    const-string v38, "Tapjoy"

    .line 44
    .local v38, "tapjoy":Ljava/lang/String;
    const-string v19, "AdMob"

    .line 46
    .local v19, "admob":Ljava/lang/String;
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "android.permission.INTERNET"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 47
    .local v27, "generalPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v48, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 48
    .local v48, "vungleWriteExternalStoragePermission":Ljava/lang/String;
    const/16 v49, 0x12

    .line 49
    .local v49, "vungleWriteExternalStoragePermissionMaxSdkVersion":I
    new-instance v47, Ljava/util/HashMap;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v47, "vunglePermissionsToMaxSdkVersionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v50, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v51, 0x12

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v47

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v50, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v46

    .line 53
    .local v46, "vunglePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.ironsource.sdk.controller.ControllerActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.ironsource.sdk.controller.InterstitialActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x2

    const-string v52, "com.ironsource.sdk.controller.OpenUrlActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    .line 54
    .local v35, "ironSourceActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.adcolony.sdk.AdColonyInterstitialActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.adcolony.sdk.AdColonyAdViewActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 55
    .local v16, "adColonyActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.applovin.adview.AppLovinInterstitialActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.applovin.adview.AppLovinConfirmationActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 56
    .local v21, "appLovinActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.chartboost.sdk.CBImpressionActivity"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    .line 57
    .local v24, "chartboostActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x2

    const-string v52, "com.hyprmx.android.sdk.activity.HyprMXNoOffersActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x3

    const-string v52, "com.hyprmx.android.sdk.videoplayer.HyprMXVideoPlayerActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    .line 59
    .local v28, "hyprMXActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.vungle.publisher.VideoFullScreenAdActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.vungle.publisher.MraidFullScreenAdActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v44

    .line 60
    .local v44, "vungleActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.inmobi.rendering.InMobiAdActivity"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    .line 61
    .local v31, "inMobiActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    .line 63
    .local v32, "inMobiBroadcastReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.facebook.ads.InterstitialAdActivity"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    .line 64
    .local v26, "facebookActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.mediabrix.android.service.AdViewActivity"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v37

    .line 65
    .local v37, "mediaBrixActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.tapjoy.TJAdUnitActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.tapjoy.mraid.view.ActionHandler"

    aput-object v52, v50, v51

    const/16 v51, 0x2

    const-string v52, "com.tapjoy.mraid.view.Browser"

    aput-object v52, v50, v51

    const/16 v51, 0x3

    const-string v52, "com.tapjoy.TJContentActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    .line 66
    .local v39, "tapjoyActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v50, "com.google.android.gms.ads.AdActivity"

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 68
    .local v20, "admobActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const-string v52, "com.unity3d.ads.adunit.AdUnitActivity"

    aput-object v52, v50, v51

    const/16 v51, 0x1

    const-string v52, "com.unity3d.ads.adunit.AdUnitSoftwareActivity"

    aput-object v52, v50, v51

    invoke-static/range {v50 .. v50}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    .line 70
    .local v40, "unityAdsActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v45, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;

    invoke-direct/range {v45 .. v45}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;-><init>()V

    .line 77
    .local v45, "vungleExternalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v29, "com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity"

    .line 79
    .local v29, "hyprMXSdk":Ljava/lang/String;
    new-instance v4, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "IronSource"

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    move/from16 v2, v51

    invoke-direct {v4, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 80
    .local v4, "ironSourceAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 82
    new-instance v5, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "AdColony"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    move/from16 v2, v51

    invoke-direct {v5, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 84
    .local v5, "adColonyAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v6, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "AppLovin"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    move/from16 v2, v51

    invoke-direct {v6, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 86
    .local v6, "appLovinAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v7, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "Chartboost"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    move/from16 v2, v51

    invoke-direct {v7, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 88
    .local v7, "chartboostAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v8, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "HyprMX"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    move/from16 v2, v51

    invoke-direct {v8, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 89
    .local v8, "hyprMXAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    const-string v50, "com.hyprmx.android.sdk.activity.HyprMXOfferViewerActivity"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setSdkName(Ljava/lang/String;)V

    .line 91
    new-instance v9, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "UnityAds"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    move/from16 v2, v51

    invoke-direct {v9, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 93
    .local v9, "unityAdsAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v10, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "Vungle"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v44

    move/from16 v2, v51

    invoke-direct {v10, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 94
    .local v10, "vungleAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v45

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setExternalLibraries(Ljava/util/ArrayList;)V

    .line 95
    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setPermissions(Ljava/util/List;)V

    .line 96
    move-object/from16 v0, v47

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setPermissionToMaxSdkVersion(Ljava/util/Map;)V

    .line 98
    new-instance v11, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "InMobi"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    move/from16 v2, v51

    invoke-direct {v11, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 99
    .local v11, "inMobiAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->setBroadcastReceivers(Ljava/util/List;)V

    .line 101
    new-instance v13, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "Facebook"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v26

    move/from16 v2, v51

    invoke-direct {v13, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 103
    .local v13, "facebookAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v12, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "MediaBrix"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v37

    move/from16 v2, v51

    invoke-direct {v12, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 105
    .local v12, "mediaBrixAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v14, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "Tapjoy"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    move/from16 v2, v51

    invoke-direct {v14, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 107
    .local v14, "tapjoyAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v15, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    const-string v50, "AdMob"

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    move/from16 v2, v51

    invoke-direct {v15, v0, v1, v2}, Lcom/ironsource/mediationsdk/integration/AdapterObject;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 109
    .local v15, "admobAdapter":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    new-instance v3, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;

    invoke-direct/range {v3 .. v15}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$2;-><init>(Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;Lcom/ironsource/mediationsdk/integration/AdapterObject;)V

    .line 126
    .local v3, "adapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/integration/AdapterObject;>;"
    const-string v50, "IntegrationHelper"

    const-string v51, "Verifying Integration:"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_7

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ironsource/mediationsdk/integration/AdapterObject;

    .line 129
    .local v17, "adapterObject":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    const/16 v42, 0x1

    .line 131
    .local v42, "verified":Z
    const-string v51, "IntegrationHelper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "--------------- "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " --------------"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->isAdapter()Z

    move-result v51

    if-eqz v51, :cond_0

    .line 134
    invoke-static/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateAdapter(Lcom/ironsource/mediationsdk/integration/AdapterObject;)Z

    move-result v51

    if-nez v51, :cond_0

    .line 135
    const/16 v42, 0x0

    .line 136
    :cond_0
    if-eqz v42, :cond_5

    .line 137
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v51

    if-eqz v51, :cond_1

    .line 138
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getSdkName()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateSdk(Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_1

    .line 139
    const/16 v42, 0x0

    .line 140
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_2

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validatePermissions(Landroid/app/Activity;Lcom/ironsource/mediationsdk/integration/AdapterObject;)Z

    move-result v51

    if-nez v51, :cond_2

    .line 142
    const/16 v42, 0x0

    .line 143
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_3

    .line 144
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getActivities()Ljava/util/List;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateActivities(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v51

    if-nez v51, :cond_3

    .line 145
    const/16 v42, 0x0

    .line 146
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v51

    if-eqz v51, :cond_4

    .line 147
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getExternalLibraries()Ljava/util/ArrayList;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateExternalLibraries(Ljava/util/ArrayList;)Z

    move-result v51

    if-nez v51, :cond_4

    .line 148
    const/16 v42, 0x0

    .line 149
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v51

    if-eqz v51, :cond_5

    .line 150
    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateBroadcastReceivers(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v51

    if-nez v51, :cond_5

    .line 151
    const/16 v42, 0x0

    .line 154
    :cond_5
    if-eqz v42, :cond_6

    .line 155
    const-string v51, "IntegrationHelper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, ">>>> "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " - VERIFIED"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    :cond_6
    const-string v51, "IntegrationHelper"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, ">>>> "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " - NOT VERIFIED"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v17    # "adapterObject":Lcom/ironsource/mediationsdk/integration/AdapterObject;
    .end local v42    # "verified":Z
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;Lcom/ironsource/mediationsdk/integration/AdapterObject;)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adapterObject"    # Lcom/ironsource/mediationsdk/integration/AdapterObject;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getPermissions()Ljava/util/List;

    move-result-object v6

    .line 284
    .local v6, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getPermissionToMaxSdkVersion()Ljava/util/Map;

    move-result-object v7

    .line 285
    .local v7, "permissionsToMaxSdkVersionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/integration/AdapterObject;->getPermissionToMinSdkVersion()Ljava/util/Map;

    move-result-object v8

    .line 286
    .local v8, "permissionsToMinSdkVersionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 287
    .local v0, "currentSdkVersion":I
    const/4 v9, 0x1

    .line 289
    .local v9, "result":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 290
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const-string v10, "IntegrationHelper"

    const-string v11, "*** Permissions ***"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "permission":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 294
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 295
    .local v1, "maxSdkVersion":I
    if-lt v1, v0, :cond_0

    .line 299
    .end local v1    # "maxSdkVersion":I
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 300
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "minSdkVersion":I
    if-gt v2, v0, :cond_0

    .line 306
    .end local v2    # "minSdkVersion":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 307
    .local v5, "permissionExists":I
    if-nez v5, :cond_3

    .line 308
    const/4 v10, 0x1

    invoke-static {v4, v10}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 310
    :cond_3
    const/4 v9, 0x0

    .line 311
    const/4 v10, 0x0

    invoke-static {v4, v10}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 315
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "permissionExists":I
    :cond_4
    return v9
.end method

.method private static validateSdk(Ljava/lang/String;)Z
    .locals 5
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 243
    .local v2, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 245
    .local v1, "localClass":Ljava/lang/Class;
    const/4 v2, 0x1

    .line 246
    const-string v3, "SDK"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "localClass":Ljava/lang/Class;
    :goto_0
    return v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SDK"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static validationMessageIsPresent(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "paramToValidate"    # Ljava/lang/String;
    .param p1, "successful"    # Z

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - MISSING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static validationMessageIsVerified(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "paramToValidate"    # Ljava/lang/String;
    .param p1, "successful"    # Z

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v0, "IntegrationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - NOT VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
