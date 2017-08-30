.class public Lcom/weirdvoice/utils/PreferencesProviderWrapper;
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

.field private context:Landroid/content/Context;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->resolver:Landroid/content/ContentResolver;

    .line 63
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    iput-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    return-void
.end method

.method public static final getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 451
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

    .line 455
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Prefs"

    const-string v3, "Impossible to find version of current package !!"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "wifi_key"    # Ljava/lang/String;
    .param p2, "mobile_key"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 387
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v1

    .line 390
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getPrefPort(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "port":I
    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    .end local v0    # "port":I
    :goto_0
    return v0

    .restart local v0    # "port":I
    :cond_0
    sget-object v1, Lcom/weirdvoice/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

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
    .line 639
    invoke-static {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isValidAnywayConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "use_anyway_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidWifiConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "Prefs"

    const-string v2, "We are valid for WIFI"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidMobileConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const-string v1, "Prefs"

    const-string v2, "We are valid for MOBILE"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidOtherConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const-string v1, "Prefs"

    const-string v2, "We are valid for OTHER"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidAnywayConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    const-string v1, "Prefs"

    const-string v2, "We are valid ANYWAY"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidMobileConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "use_3g_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v2

    .line 138
    .local v2, "valid_for_3g":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "use_edge_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v3

    .line 139
    .local v3, "valid_for_edge":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "use_gprs_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v4

    .line 140
    .local v4, "valid_for_gprs":Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "use_roaming_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v5

    .line 142
    .local v5, "valid_for_roaming":Z
    if-nez v5, :cond_1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v6

    .line 148
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 149
    :cond_2
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 153
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    if-eqz v1, :cond_3

    const/4 v8, 0x5

    if-gt v1, v8, :cond_0

    if-lt v1, v10, :cond_0

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 159
    .local v0, "subType":I
    if-eqz v2, :cond_4

    .line 160
    if-lt v0, v10, :cond_4

    move v6, v7

    .line 161
    goto :goto_0

    .line 165
    :cond_4
    if-eqz v4, :cond_6

    .line 167
    if-eq v0, v7, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v6, v7

    .line 168
    goto :goto_0

    .line 172
    :cond_6
    if-eqz v3, :cond_0

    .line 173
    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    move v6, v7

    .line 174
    goto :goto_0
.end method

.method private isValidOtherConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use_other_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, "valid_for_other":Z
    if-eqz v0, :cond_0

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 192
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
    .line 464
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

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "use_wifi_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    .local v1, "valid_for_wifi":Z
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 125
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 131
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
    .line 428
    const-string v0, "enable_dns_srv"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public forceDtmfInBand()Z
    .locals 2

    .prologue
    .line 586
    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

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

    .line 590
    const-string v1, "dtmf_mode"

    invoke-virtual {p0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

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
    .line 325
    const-string v0, "set_audio_generate_tone"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "incomingNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    .line 259
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

    .line 261
    .local v0, "availableNetworks":[Ljava/lang/String;
    array-length v4, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 267
    return-object v1

    .line 261
    :cond_0
    aget-object v2, v0, v3

    .line 262
    .local v2, "network":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "use_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getAutoCloseTime()I
    .locals 1

    .prologue
    .line 498
    const-string v0, "snd_auto_close_time"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClockRate(Lcom/weirdvoice/service/MediaManager;)J
    .locals 9
    .param p1, "mediaManager"    # Lcom/weirdvoice/service/MediaManager;

    .prologue
    .line 302
    const-string v6, "snd_clock_rate"

    invoke-virtual {p0, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "clockRate":Ljava/lang/String;
    const-wide/16 v2, 0x3e80

    .line 305
    .local v2, "defaultRate":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    .line 306
    .local v4, "rate":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 307
    invoke-virtual {p1, v2, v3}, Lcom/weirdvoice/service/MediaManager;->getBestSampleRate(J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 313
    .end local v4    # "rate":J
    :cond_0
    :goto_0
    return-wide v4

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "Prefs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Clock rate "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not well formated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 313
    goto :goto_0
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 6
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-static {p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p0, v1, p3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 611
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-short v3, v3

    .line 617
    .end local v2    # "val":Ljava/lang/String;
    :goto_0
    return v3

    .line 612
    .restart local v2    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Impossible to parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    goto :goto_0
.end method

.method public getEchoCancellationTail()J
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->hasEchoCancellation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    const-wide/16 v0, 0x0

    .line 514
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "echo_cancellation_tail"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getInCallMode()I
    .locals 5

    .prologue
    .line 285
    const-string v2, "sip_audio_mode"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "mode":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 292
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Prefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "In call mode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not well formated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInitialVolumeLevel()F
    .locals 2

    .prologue
    .line 329
    const-string v0, "snd_stream_level"

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getLogLevel()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v2, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    .line 272
    const-string v3, "log_level"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 271
    invoke-static {v2, v3, v4}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    .local v0, "prefsValue":I
    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    if-lt v0, v1, :cond_0

    .line 276
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
    .line 523
    const-string v3, "snd_media_quality"

    invoke-virtual {p0, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "mediaQuality":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 527
    .local v2, "prefsValue":I
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-ltz v2, :cond_0

    .line 528
    int-to-long v4, v2

    .line 534
    .end local v2    # "prefsValue":I
    :goto_0
    return-wide v4

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Audio quality "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not well formated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v4, 0x4

    goto :goto_0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

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
    .line 100
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRTPPort()I
    .locals 1

    .prologue
    .line 424
    const-string v0, "network_rtp_port"

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    const-string v1, "ringtone"

    .line 339
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "ringtone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_0
    return-object v0
.end method

.method public getStunEnabled()I
    .locals 1

    .prologue
    .line 543
    const-string v0, "enable_stun"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 478
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getprop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 479
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 480
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 481
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 482
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 488
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    :goto_0
    return-object v3

    .line 485
    :catch_0
    move-exception v5

    .line 488
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTCPTransportPort()I
    .locals 1

    .prologue
    .line 378
    const-string v0, "network_tcp_transport_port"

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTLSMethod()I
    .locals 1

    .prologue
    .line 432
    const-string v0, "tls_method"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTLSTransportPort()I
    .locals 1

    .prologue
    .line 382
    const-string v0, "network_tls_transport_port"

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTcpKeepAliveInterval()I
    .locals 2

    .prologue
    .line 409
    const-string v0, "tcp_keep_alive_interval_wifi"

    .line 410
    const-string v1, "tcp_keep_alive_interval_mobile"

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTlsKeepAliveInterval()I
    .locals 2

    .prologue
    .line 419
    const-string v0, "tls_keep_alive_interval_wifi"

    .line 420
    const-string v1, "tls_keep_alive_interval_mobile"

    .line 419
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTurnServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const-string v0, "turn_server"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUDPTransportPort()I
    .locals 1

    .prologue
    .line 374
    const-string v0, "network_udp_transport_port"

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPrefPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUdpKeepAliveInterval()I
    .locals 2

    .prologue
    .line 399
    const-string v0, "keep_alive_interval_wifi"

    .line 400
    const-string v1, "keep_alive_interval_mobile"

    .line 399
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getKeepAliveInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 436
    const-string v2, "user_agent"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "userAgent":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-static {p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 441
    .local v0, "pinfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getApiLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .end local v0    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1
.end method

.method public hasEchoCancellation()Z
    .locals 1

    .prologue
    .line 507
    const-string v0, "echo_cancellation"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTCPEnabled()Z
    .locals 1

    .prologue
    .line 350
    const-string v0, "enable_tcp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTLSEnabled()Z
    .locals 1

    .prologue
    .line 358
    const-string v0, "enable_tls"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUDPEnabled()Z
    .locals 1

    .prologue
    .line 354
    const-string v0, "enable_udp"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isValidConnectionForIncoming()Z
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 253
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "in"

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidConnectionForOutgoing()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing(Z)Z

    move-result v0

    return v0
.end method

.method public isValidConnectionForOutgoing(Z)Z
    .locals 3
    .param p1, "considerQuit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p1, :cond_0

    .line 237
    const-string v2, "has_been_quit"

    invoke-virtual {p0, v2, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    :goto_0
    return v1

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 243
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "out"

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionFor(Landroid/net/NetworkInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public resetAllDefaultValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    sget-object v0, Lcom/weirdvoice/api/SipConfigManager;->RAZ_URI:Landroid/net/Uri;

    .line 71
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->resolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
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
    .line 562
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 563
    const-string v0, "codecs_list"

    .line 564
    const-string v1, "|"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-static {p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, v0, p3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method public setLibCapability(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;
    .param p2, "canDo"    # Z

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 577
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 113
    return-void
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
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
    .line 569
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 570
    const-string v0, "codecs_video_list"

    .line 571
    const-string v1, "|"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    return-void
.end method

.method public useIPv6()Z
    .locals 1

    .prologue
    .line 362
    const-string v0, "use_ipv6"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useModeApi()Z
    .locals 1

    .prologue
    .line 321
    const-string v0, "use_mode_api"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useRoutingApi()Z
    .locals 1

    .prologue
    .line 317
    const-string v0, "use_routing_api"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useSipInfoDtmf()Z
    .locals 2

    .prologue
    .line 582
    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

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
