.class public Lcom/ironsource/mediationsdk/server/ServerURL;
.super Ljava/lang/Object;
.source "ServerURL.java"


# static fields
.field private static final AMPERSAND:Ljava/lang/String; = "&"

.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field private static final APPLICATION_USER_ID:Ljava/lang/String; = "applicationUserId"

.field private static final APPLICATION_VERSION:Ljava/lang/String; = "appVer"

.field private static BASE_URL_PREFIX:Ljava/lang/String; = null

.field private static BASE_URL_SUFFIX:Ljava/lang/String; = null

.field private static final CONNECTION_TYPE:Ljava/lang/String; = "connType"

.field private static final DEVICE_MAKE:Ljava/lang/String; = "devMake"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "devModel"

.field private static final EQUAL:Ljava/lang/String; = "="

.field private static final GAID:Ljava/lang/String; = "advId"

.field private static final IMPRESSION:Ljava/lang/String; = "impression"

.field private static final OS_VERSION:Ljava/lang/String; = "osVer"

.field private static final PLACEMENT:Ljava/lang/String; = "placementId"

.field private static final PLATFORM_KEY:Ljava/lang/String; = "platform"

.field private static final PLUGIN_FW_VERSION:Ljava/lang/String; = "plugin_fw_v"

.field private static final PLUGIN_TYPE:Ljava/lang/String; = "pluginType"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "pluginVersion"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final SERR:Ljava/lang/String; = "serr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "https://init.supersonicads.com/sdk/v"

    sput-object v0, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    .line 22
    const-string v0, "?request="

    sput-object v0, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createURLParams(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, ""

    .line 108
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 109
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    goto :goto_0

    .line 113
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method private static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/server/ServerURL;->BASE_URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "applicationUserId"    # Ljava/lang/String;
    .param p3, "gaid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "segmentParamVector":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 51
    .local v2, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/Pair;

    const-string v11, "platform"

    const-string v12, "android"

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v10, Landroid/util/Pair;

    const-string v11, "applicationKey"

    invoke-direct {v10, v11, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v10, Landroid/util/Pair;

    const-string v11, "applicationUserId"

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v10, Landroid/util/Pair;

    const-string v11, "sdkVersion"

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v10

    if-nez v10, :cond_0

    .line 56
    new-instance v10, Landroid/util/Pair;

    const-string v11, "serr"

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 58
    new-instance v10, Landroid/util/Pair;

    const-string v11, "pluginType"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 60
    new-instance v10, Landroid/util/Pair;

    const-string v11, "pluginVersion"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 62
    new-instance v10, Landroid/util/Pair;

    const-string v11, "plugin_fw_v"

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 64
    new-instance v10, Landroid/util/Pair;

    const-string v11, "advId"

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "appVersion":Ljava/lang/String;
    new-instance v10, Landroid/util/Pair;

    const-string v11, "appVer"

    invoke-direct {v10, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .local v8, "osVersion":I
    new-instance v10, Landroid/util/Pair;

    const-string v11, "osVer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 71
    .local v6, "make":Ljava/lang/String;
    new-instance v10, Landroid/util/Pair;

    const-string v11, "devMake"

    invoke-direct {v10, v11, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 73
    .local v7, "model":Ljava/lang/String;
    new-instance v10, Landroid/util/Pair;

    const-string v11, "devModel"

    invoke-direct {v10, v11, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {p0}, Lcom/ironsource/mediationsdk/server/ServerURL;->getConnectionTypeForInit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "connection":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 77
    new-instance v10, Landroid/util/Pair;

    const-string v11, "connType"

    invoke-direct {v10, v11, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_5
    if-eqz p4, :cond_6

    .line 80
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_6
    invoke-static {v2}, Lcom/ironsource/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "params":Ljava/lang/String;
    const-string v10, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {v10, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "encryptedParams":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "encodedEncryptedParams":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ironsource/mediationsdk/server/ServerURL;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getConnectionTypeForInit(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v1, "WIFI"

    .line 123
    .local v1, "CONNECTION_WIFI":Ljava/lang/String;
    const-string v0, "MOBILE"

    .line 124
    .local v0, "CONNECTION_CELLULAR":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 125
    const-string v4, ""

    .line 144
    :goto_0
    return-object v4

    .line 127
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 128
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    .line 129
    const-string v4, ""

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 134
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MOBILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const-string v4, "cellular"

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    const-string v4, "wifi"

    goto :goto_0

    .line 144
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method public static getRequestURL(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v0, "array":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v3, "impression"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Landroid/util/Pair;

    const-string v3, "placementId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v0}, Lcom/ironsource/mediationsdk/server/ServerURL;->createURLParams(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "params":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
