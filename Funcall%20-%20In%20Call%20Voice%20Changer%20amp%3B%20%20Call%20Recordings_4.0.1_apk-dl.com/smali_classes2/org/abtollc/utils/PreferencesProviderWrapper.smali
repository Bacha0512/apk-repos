.class public Lorg/abtollc/utils/PreferencesProviderWrapper;
.super Ljava/lang/Object;
.source "PreferencesProviderWrapper.java"


# static fields
.field public static final HAS_ALREADY_SETUP_SERVICE:Ljava/lang/String; = "has_already_setup_service"

.field public static final HAS_BEEN_QUIT:Ljava/lang/String; = "has_been_quit"

.field public static final LIB_CAP_SRTP:Ljava/lang/String; = "cap_srtp"

.field public static final LIB_CAP_TLS:Ljava/lang/String; = "cap_tls"

.field private static final THIS_FILE:Ljava/lang/String; = "Prefs"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private wraper:Lorg/abtollc/utils/PreferencesWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper;

    invoke-direct {v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    .line 43
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 44
    return-void
.end method

.method public static final getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 433
    :goto_0
    return-object v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Prefs"

    const-string v3, "Impossible to find version of current package !!"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIPAddress()Ljava/net/InetAddress;
    .locals 9

    .prologue
    .line 557
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 558
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 559
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 560
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 561
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_1

    .line 562
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "sAddr":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 564
    .local v4, "isIPv4":Z
    if-eqz v4, :cond_1

    .line 570
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    .end local v4    # "isIPv4":Z
    .end local v5    # "sAddr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 569
    :catch_0
    move-exception v6

    .line 570
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "wifi_key"    # Ljava/lang/String;
    .param p2, "mobile_key"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 369
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v1

    .line 372
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getPrefPort(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "port":I
    invoke-direct {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    .end local v0    # "port":I
    :goto_0
    return v0

    .restart local v0    # "port":I
    :cond_0
    sget-object v1, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getRecordsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 696
    invoke-static {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isIPGlobal(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 575
    const-string v5, "Prefs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Integer;

    const/16 v6, 0x7f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    const/16 v7, 0xc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xac

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 579
    .local v1, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 581
    .local v2, "first":I
    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 589
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    return v3

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Prefs"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v2, -0x1

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 589
    goto :goto_1
.end method

.method private isValidAnywayConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use_anyway_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidWifiConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "Prefs"

    const-string v2, "We are valid for WIFI"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidMobileConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "Prefs"

    const-string v2, "We are valid for MOBILE"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidOtherConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    const-string v1, "Prefs"

    const-string v2, "We are valid for OTHER"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidAnywayConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    const-string v1, "Prefs"

    const-string v2, "We are valid ANYWAY"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidMobileConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use_3g_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v2

    .line 130
    .local v2, "valid_for_3g":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use_edge_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v3

    .line 131
    .local v3, "valid_for_edge":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use_gprs_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v4

    .line 133
    .local v4, "valid_for_gprs":Z
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 138
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v1, :cond_1

    const/4 v7, 0x5

    if-gt v1, v7, :cond_2

    if-lt v1, v9, :cond_2

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 144
    .local v0, "subType":I
    if-eqz v2, :cond_3

    if-lt v0, v9, :cond_3

    move v5, v6

    .line 162
    .end local v0    # "subType":I
    .end local v1    # "type":I
    :cond_2
    :goto_0
    return v5

    .line 150
    .restart local v0    # "subType":I
    .restart local v1    # "type":I
    :cond_3
    if-eqz v4, :cond_5

    if-eq v0, v6, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v5, v6

    .line 152
    goto :goto_0

    .line 156
    :cond_5
    if-eqz v3, :cond_2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    move v5, v6

    .line 158
    goto :goto_0
.end method

.method private isValidOtherConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use_other_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, "valid_for_other":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 175
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 443
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidWifiConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use_wifi_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 113
    .local v1, "valid_for_wifi":Z
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 116
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 122
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableDNSSRV()Z
    .locals 1

    .prologue
    .line 407
    const-string v0, "enable_dns_srv"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public forceDtmfInBand()Z
    .locals 2

    .prologue
    .line 629
    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceDtmfRTP()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 633
    const-string v1, "dtmf_mode"

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateForSetCall()Z
    .locals 1

    .prologue
    .line 288
    const-string v0, "set_audio_generate_tone"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllIncomingNetworks()Ljava/util/ArrayList;
    .locals 7
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
    const/4 v3, 0x0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "incomingNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "3g"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "edge"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "gprs"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "wifi"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "other"

    aput-object v5, v0, v4

    .line 227
    .local v0, "availableNetworks":[Ljava/lang/String;
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 228
    .local v2, "network":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "network":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getAutoCloseTime()I
    .locals 1

    .prologue
    .line 494
    const-string v0, "snd_auto_close_time"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClockRate()J
    .locals 5

    .prologue
    .line 268
    const-string v2, "snd_clock_rate"

    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "clockRate":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 274
    :goto_0
    return-wide v2

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Prefs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clock rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not well formated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-wide/16 v2, 0x3e80

    goto :goto_0
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-static {p1, p2}, Lorg/abtollc/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p0, v1, p3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-short v3, v3

    .line 673
    .end local v2    # "val":Ljava/lang/String;
    :goto_0
    return v3

    .line 668
    .restart local v2    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Impossible to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    goto :goto_0
.end method

.method public getDSCPVal()I
    .locals 1

    .prologue
    .line 412
    const-string v0, "dscp_val"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEchoCancellationTail()J
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->hasEchoCancellation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-wide/16 v0, 0x0

    .line 512
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "echo_cancellation_tail"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getHeadsetAction()I
    .locals 3

    .prologue
    .line 478
    :try_start_0
    const-string v1, "headset_action"

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Prefs"

    const-string v2, "Headset action option not well formated"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIceEnabled()I
    .locals 1

    .prologue
    .line 542
    const-string v0, "enable_ice"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallMode()I
    .locals 5

    .prologue
    .line 251
    const-string v2, "sip_audio_mode"

    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "mode":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 258
    :goto_0
    return v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Prefs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In call mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not well formated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInitialVolumeLevel()F
    .locals 2

    .prologue
    .line 293
    const-string v0, "snd_stream_level"

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 238
    const-string v2, "log_level"

    invoke-virtual {p0, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "prefsValue":I
    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    if-lt v0, v1, :cond_0

    .line 242
    .end local v0    # "prefsValue":I
    :goto_0
    return v0

    .restart local v0    # "prefsValue":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getMediaQuality()J
    .locals 6

    .prologue
    .line 521
    const-string v3, "snd_media_quality"

    invoke-virtual {p0, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "mediaQuality":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 525
    .local v2, "prefsValue":I
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-ltz v2, :cond_0

    .line 526
    int-to-long v4, v2

    .line 532
    .end local v2    # "prefsValue":I
    :goto_0
    return-wide v4

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio quality "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not well formated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v4, 0x4

    goto :goto_0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "f"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "i"    # Ljava/lang/Integer;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRTPPort()I
    .locals 1

    .prologue
    .line 403
    const-string v0, "network_rtp_port"

    invoke-direct {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    const-string v1, "ringtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 304
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "ringtone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    return-object v0
.end method

.method public getRingtone(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contactUri"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ringtone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lorg/abtollc/api/SipUri;->getSipNumberSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "ringtone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const-string v1, "ringtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 318
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_1
    return-object v0
.end method

.method public getStunEnabled()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 599
    const-string v4, "enable_stun"

    invoke-virtual {p0, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 600
    .local v1, "isEnabled":Z
    if-nez v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v2

    .line 602
    :cond_1
    invoke-direct {p0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getIPAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 603
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_2

    move v2, v3

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isIPGlobal(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 457
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getprop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 458
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 459
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 460
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 461
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 467
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    :goto_0
    return-object v3

    .line 464
    :catch_0
    move-exception v5

    .line 467
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTCPTransportPort()I
    .locals 1

    .prologue
    .line 359
    const-string v0, "network_tcp_transport_port"

    invoke-direct {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTLSMethod()I
    .locals 1

    .prologue
    .line 416
    const-string v0, "tls_method"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTLSTransportPort()I
    .locals 1

    .prologue
    .line 363
    const-string v0, "network_tls_transport_port"

    invoke-direct {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTcpKeepAliveInterval()I
    .locals 2

    .prologue
    .line 390
    const-string v0, "tcp_keep_alive_interval_wifi"

    const-string v1, "tcp_keep_alive_interval_mobile"

    invoke-direct {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTlsKeepAliveInterval()I
    .locals 2

    .prologue
    .line 399
    const-string v0, "tls_keep_alive_interval_wifi"

    const-string v1, "tls_keep_alive_interval_mobile"

    invoke-direct {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTurnEnabled()I
    .locals 1

    .prologue
    .line 551
    const-string v0, "enable_turn"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTurnServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    const-string v0, "turn_server"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUDPTransportPort()I
    .locals 1

    .prologue
    .line 355
    const-string v0, "network_udp_transport_port"

    invoke-direct {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUdpKeepAliveInterval()I
    .locals 2

    .prologue
    .line 381
    const-string v0, "keep_alive_interval_wifi"

    const-string v1, "keep_alive_interval_mobile"

    invoke-direct {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    const-string v1, "user_agent"

    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "userAgent":Ljava/lang/String;
    return-object v0
.end method

.method public hasEchoCancellation()Z
    .locals 1

    .prologue
    .line 504
    const-string v0, "echo_cancellation"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTCPEnabled()Z
    .locals 1

    .prologue
    .line 331
    const-string v0, "enable_tcp"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTLSEnabled()Z
    .locals 1

    .prologue
    .line 339
    const-string v0, "enable_tls"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUDPEnabled()Z
    .locals 1

    .prologue
    .line 335
    const-string v0, "enable_udp"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidConnectionForIncoming()Z
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 221
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "in"

    invoke-direct {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidConnectionForOutgoing()Z
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 211
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "out"

    invoke-direct {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public resetAllDefaultValues()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->resetAllDefaultValues()V

    .line 52
    return-void
.end method

.method public setCodecList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 641
    const-string v0, "codecs_list"

    const-string v1, "|"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    return-void
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-static {p1, p2}, Lorg/abtollc/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0, v0, p3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_0
    return-void
.end method

.method public setLibCapability(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;
    .param p2, "canDo"    # Z

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 619
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 96
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 98
    return-void
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # F

    .prologue
    .line 101
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 102
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 103
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 104
    return-void
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 90
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/abtollc/utils/PreferencesProviderWrapper;->wraper:Lorg/abtollc/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 92
    return-void
.end method

.method public setVideoCodecList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 647
    const-string v0, "codecs_video_list"

    const-string v1, "|"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method public useIPv6()Z
    .locals 1

    .prologue
    .line 343
    const-string v0, "use_ipv6"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public useModeApi()Z
    .locals 1

    .prologue
    .line 283
    const-string v0, "use_mode_api"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public useRoutingApi()Z
    .locals 1

    .prologue
    .line 279
    const-string v0, "use_routing_api"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public useSipInfoDtmf()Z
    .locals 2

    .prologue
    .line 625
    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
