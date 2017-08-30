.class public final Lorg/abtollc/sdk/AbtoPhoneCfg;
.super Ljava/lang/Object;
.source "AbtoPhoneCfg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;,
        Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;,
        Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;,
        Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    }
.end annotation


# static fields
.field public static CODEC_NB:Ljava/lang/String; = null

.field public static CODEC_WB:Ljava/lang/String; = null

.field private static final THIS_FILE:Ljava/lang/String; = "AbtoPhoneConfiguration"


# instance fields
.field private mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "nb"

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->CODEC_NB:Ljava/lang/String;

    .line 35
    const-string v0, "wb"

    sput-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->CODEC_WB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->init()V

    .line 65
    invoke-direct {p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->firsStart()V

    .line 66
    return-void
.end method

.method private firsStart()V
    .locals 5

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "has_already_setup_service"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    .local v1, "hasSetup":Z
    const-string v2, "AbtoPhoneConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service has been setup ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez v1, :cond_0

    .line 75
    const-string v2, "AbtoPhoneConfiguration"

    const-string v3, "RESET SETTINGS !!!!"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "hasSetup":Z
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIPAddress(Z)Ljava/lang/String;
    .locals 10
    .param p1, "useIPv4"    # Z

    .prologue
    .line 229
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 230
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 231
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 233
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "sAddr":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    .line 236
    .local v5, "isIPv4":Z
    if-eqz p1, :cond_3

    .line 237
    if-eqz v5, :cond_1

    .line 251
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 240
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "isIPv4":Z
    .restart local v6    # "sAddr":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_1

    .line 241
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 243
    .local v2, "delim":I
    if-ltz v2, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 249
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 251
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method private isValidPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 607
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


# virtual methods
.method public LoadFromDb()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public SaveToDb()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;
    .param p4, "authId"    # Ljava/lang/String;
    .param p5, "displName"    # Ljava/lang/String;
    .param p6, "expire"    # I
    .param p7, "enableDoubleRegistration"    # Z

    .prologue
    .line 113
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/abtollc/sdk/AbtoPhoneCfg;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pass"    # Ljava/lang/String;
    .param p5, "authId"    # Ljava/lang/String;
    .param p6, "displName"    # Ljava/lang/String;
    .param p7, "expire"    # I
    .param p8, "enableDoubleRegistration"    # Z

    .prologue
    .line 118
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lorg/abtollc/sdk/AbtoPhoneCfg;->addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)J
    .locals 16
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pass"    # Ljava/lang/String;
    .param p5, "authId"    # Ljava/lang/String;
    .param p6, "displName"    # Ljava/lang/String;
    .param p7, "expire"    # I
    .param p8, "enableDoubleRegistration"    # Z
    .param p9, "contactDetails"    # Ljava/lang/String;
    .param p10, "contactDetailsUri"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p7, :cond_0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-wide/16 v2, -0x1

    .line 223
    .end local p2    # "proxy":Ljava/lang/String;
    .end local p5    # "authId":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 143
    .restart local p2    # "proxy":Ljava/lang/String;
    .restart local p5    # "authId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 146
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 148
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 149
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    :cond_1
    new-instance v8, Lorg/abtollc/api/SipProfile;

    invoke-direct {v8, v9}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 153
    .local v8, "account":Lorg/abtollc/api/SipProfile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const-string v4, "%1$s=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "account_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v14, v8, Lorg/abtollc/api/SipProfile;->id:J

    .line 155
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v4, v8, Lorg/abtollc/api/SipProfile;->id:J

    .line 158
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 157
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 164
    .end local v8    # "account":Lorg/abtollc/api/SipProfile;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_3
    :goto_1
    new-instance v8, Lorg/abtollc/api/SipProfile;

    invoke-direct {v8}, Lorg/abtollc/api/SipProfile;-><init>()V

    .line 169
    .restart local v8    # "account":Lorg/abtollc/api/SipProfile;
    move-object/from16 v0, p6

    iput-object v0, v8, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 171
    if-eqz p1, :cond_4

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "ipAddr":Ljava/lang/String;
    if-eqz v11, :cond_5

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    :cond_5
    const-wide/16 v2, -0x1

    goto/16 :goto_0

    .line 161
    .end local v8    # "account":Lorg/abtollc/api/SipProfile;
    .end local v11    # "ipAddr":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 162
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Login Screen"

    const-string v3, "Error on looping over sip profiles"

    invoke-static {v2, v3, v10}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 178
    .restart local v8    # "account":Lorg/abtollc/api/SipProfile;
    .restart local v11    # "ipAddr":Ljava/lang/String;
    :cond_6
    move-object/from16 p1, v11

    .line 182
    .end local v11    # "ipAddr":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getSignalingTransport()Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 183
    iget-object v2, v8, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->TLS:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_e

    const-string v12, "sips"

    .line 184
    .local v12, "scheme":Ljava/lang/String;
    :goto_2
    const-string v2, "<%1$s:%2$s@%3$s>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Lorg/abtollc/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 187
    const-string v2, "%1$s:%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 188
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 189
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sip:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .end local p2    # "proxy":Ljava/lang/String;
    :goto_3
    aput-object p2, v2, v3

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 192
    :cond_8
    move/from16 v0, p8

    iput-boolean v0, v8, Lorg/abtollc/api/SipProfile;->allow_contact_rewrite:Z

    .line 193
    move/from16 v0, p8

    iput-boolean v0, v8, Lorg/abtollc/api/SipProfile;->allow_via_rewrite:Z

    .line 194
    const/4 v2, 0x2

    iput v2, v8, Lorg/abtollc/api/SipProfile;->contact_rewrite_method:I

    .line 195
    const-string v2, "*"

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->realm:Ljava/lang/String;

    .line 196
    if-eqz p5, :cond_9

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object/from16 p5, p3

    .end local p5    # "authId":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p5

    iput-object v0, v8, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p4

    iput-object v0, v8, Lorg/abtollc/api/SipProfile;->data:Ljava/lang/String;

    .line 198
    const-string v2, "Digest"

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->scheme:Ljava/lang/String;

    .line 199
    const/4 v2, 0x0

    iput v2, v8, Lorg/abtollc/api/SipProfile;->datatype:I

    .line 203
    if-nez p7, :cond_b

    .line 204
    const-string v2, "LOCAL"

    iput-object v2, v8, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    .line 207
    :cond_b
    move/from16 v0, p7

    iput v0, v8, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, v8, Lorg/abtollc/api/SipProfile;->use_rfc5626:Z

    .line 210
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isUseSRTP()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    :goto_4
    iput v2, v8, Lorg/abtollc/api/SipProfile;->use_srtp:I

    .line 212
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 213
    move-object/from16 v0, p9

    iput-object v0, v8, Lorg/abtollc/api/SipProfile;->contactDetails:Ljava/lang/String;

    .line 216
    :cond_c
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 217
    move-object/from16 v0, p10

    iput-object v0, v8, Lorg/abtollc/api/SipProfile;->contactDetailsUri:Ljava/lang/String;

    .line 220
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 221
    invoke-virtual {v8}, Lorg/abtollc/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 223
    .local v13, "uri":Landroid/net/Uri;
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 183
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local p2    # "proxy":Ljava/lang/String;
    .restart local p5    # "authId":Ljava/lang/String;
    :cond_e
    const-string v12, "sip"

    goto/16 :goto_2

    .line 189
    .restart local v12    # "scheme":Ljava/lang/String;
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 210
    .end local p2    # "proxy":Ljava/lang/String;
    .end local p5    # "authId":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public enableRingbacktone(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 886
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "use_native_ringback_tone"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void

    .line 886
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public enableRingtone(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 882
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "enable_ringtone"

    invoke-virtual {v0, v1, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 883
    return-void
.end method

.method public getAccount(J)Lorg/abtollc/api/SipProfile;
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 271
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    sget-object v1, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lorg/abtollc/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAccountCallURL(J)Ljava/lang/String;
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 283
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 284
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, v0, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 287
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAccountDisplayName(J)Ljava/lang/String;
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 292
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, v0, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    .line 295
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAccountDomain(J)Ljava/lang/String;
    .locals 7
    .param p1, "accId"    # J

    .prologue
    const/4 v6, 0x2

    .line 307
    const-string v2, ""

    .line 308
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 309
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    iget-object v4, v0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "domSplit":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v1, v4

    .line 315
    array-length v4, v1

    if-le v4, v6, :cond_0

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    .end local v1    # "domSplit":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 319
    :catch_0
    move-exception v3

    .line 320
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "AbtoPhoneConfiguration"

    const-string v5, "account domain wrong or not setted"

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccountExpire(J)I
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 329
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 330
    iget v1, v0, Lorg/abtollc/api/SipProfile;->reg_timeout:I

    .line 332
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountUserName(J)Ljava/lang/String;
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 300
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, v0, Lorg/abtollc/api/SipProfile;->username:Ljava/lang/String;

    .line 303
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAccountsCount()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public getCodecList()[Lorg/abtollc/utils/codec/Codec;
    .locals 1

    .prologue
    .line 575
    invoke-static {}, Lorg/abtollc/utils/codec/Codec;->values()[Lorg/abtollc/utils/codec/Codec;

    move-result-object v0

    return-object v0
.end method

.method public getCodecPriority(Lorg/abtollc/utils/codec/Codec;Ljava/lang/String;S)S
    .locals 4
    .param p1, "codecName"    # Lorg/abtollc/utils/codec/Codec;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # S

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Lorg/abtollc/utils/codec/Codec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCodecType()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 555
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 556
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 558
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 566
    :goto_0
    return-object v2

    .line 562
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-static {v4, v5}, Lorg/abtollc/api/SipConfigManager;->getBandTypeKey(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 566
    goto :goto_0
.end method

.method protected getConfigService()Lorg/abtollc/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method public getDTMFmode()Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;
    .locals 3

    .prologue
    .line 902
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "tsx_btd_timeout"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 904
    .local v0, "ordinal":I
    invoke-static {}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->values()[Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getHangupTimeout()I
    .locals 3

    .prologue
    .line 831
    const/4 v0, -0x1

    .line 833
    .local v0, "time":I
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "tsx_btd_timeout"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 836
    :goto_0
    return v0

    .line 834
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getKeepAliveInterval(Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;)I
    .locals 2
    .param p1, "transport"    # Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    .prologue
    .line 840
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$1;->$SwitchMap$org$abtollc$sdk$AbtoPhoneCfg$SignalingTransportType:[I

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 848
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v0

    :goto_0
    return v0

    .line 842
    :pswitch_0
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v0

    goto :goto_0

    .line 844
    :pswitch_1
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTcpKeepAliveInterval()I

    move-result v0

    goto :goto_0

    .line 846
    :pswitch_2
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTlsKeepAliveInterval()I

    move-result v0

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRegisterTimeout()I
    .locals 3

    .prologue
    .line 822
    const/4 v0, -0x1

    .line 824
    .local v0, "time":I
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "tsx_rtd_timeout"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 827
    :goto_0
    return v0

    .line 825
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRingtone()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 687
    :goto_0
    return-object v1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingtone(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "contact_uri"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getRingtone()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "ringtone":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ringtone"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Lorg/abtollc/api/SipUri;->getSipNumberSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 698
    .end local v1    # "ringtone":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 694
    .restart local v1    # "ringtone":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRtpPort()I
    .locals 4

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, "port":I
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "network_rtp_port"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :goto_0
    return v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSTUNServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "stun_server"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSignalingTransport()Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    .locals 4

    .prologue
    .line 765
    sget-object v2, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    # getter for: Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->value:I
    invoke-static {v2}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->access$000(Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;)I

    move-result v1

    .line 767
    .local v1, "prefVal":I
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "signaling_transport"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 771
    :goto_0
    invoke-static {v1}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getTypeByValue(I)Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    move-result-object v2

    return-object v2

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSipPort()I
    .locals 5

    .prologue
    .line 612
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getSignalingTransport()Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    move-result-object v3

    sget-object v4, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    invoke-virtual {v3, v4}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "network_udp_transport_port"

    .line 615
    .local v2, "portKey":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 617
    .local v1, "port":I
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v3, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 621
    :goto_1
    invoke-direct {p0, v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isValidPort(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    .end local v1    # "port":I
    :goto_2
    return v1

    .line 612
    .end local v2    # "portKey":Ljava/lang/String;
    :cond_0
    const-string v2, "network_tcp_transport_port"

    goto :goto_0

    .line 618
    .restart local v1    # "port":I
    .restart local v2    # "portKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 624
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Lorg/abtollc/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public getTLSCAListFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "ca_list_file"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTLSMethod()Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSMethod()I

    move-result v0

    invoke-static {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->valueOf(I)Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    move-result-object v0

    return-object v0
.end method

.method public getTLSServerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "network_tls_server_name"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTURNPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "turn_password"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTURNServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnServer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTURNUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "turn_username"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 482
    :goto_0
    return-object v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUserAgent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoQualityMode()Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;
    .locals 4

    .prologue
    .line 927
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "video_capture_size"

    const-string v3, "352x288@30"

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "value":Ljava/lang/String;
    const-string v1, "720x480@15"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_720_480:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    .line 933
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->VIDEO_MODE_352_288:Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lorg/abtollc/utils/PreferencesProviderWrapper;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 91
    return-void
.end method

.method public isAccountRegistered(J)Z
    .locals 3
    .param p1, "accId"    # J

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 276
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 277
    iget-boolean v1, v0, Lorg/abtollc/api/SipProfile;->active:Z

    .line 279
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnectivityValid()Z
    .locals 4

    .prologue
    .line 776
    const/4 v1, 0x0

    .line 778
    .local v1, "valid":Z
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v1

    .line 779
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    or-int/2addr v1, v2

    .line 784
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isICEEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getIceEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 430
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 426
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 430
    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup_service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNetworkSelected(Lorg/abtollc/utils/network/NetworkType;)Z
    .locals 4
    .param p1, "type"    # Lorg/abtollc/utils/network/NetworkType;

    .prologue
    const/4 v1, 0x0

    .line 513
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Lorg/abtollc/utils/network/NetworkType;->getInParamName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 514
    invoke-virtual {p1}, Lorg/abtollc/utils/network/NetworkType;->getOutParamNamem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 518
    :cond_0
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRingbackToneEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 890
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "use_native_ringback_tone"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSTUNEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getStunEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 342
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 338
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 342
    goto :goto_0
.end method

.method public isTLSVerifyServer()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tls_verify_server"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTURNEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 444
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 448
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 444
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 448
    goto :goto_0
.end method

.method public isUseSRTP()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 797
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "use_srtp"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 801
    :cond_0
    :goto_0
    return v1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isUseZRTP()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 814
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "use_zrtp"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 818
    :cond_0
    :goto_0
    return v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVideoCallEnabled()Z
    .locals 3

    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 712
    :goto_0
    return v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public setCodecPriority(Lorg/abtollc/utils/codec/Codec;Ljava/lang/String;S)V
    .locals 4
    .param p1, "codec"    # Lorg/abtollc/utils/codec/Codec;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # S

    .prologue
    .line 543
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Lorg/abtollc/utils/codec/Codec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCodecPriority(Lorg/abtollc/utils/codec/Codec;S)V
    .locals 1
    .param p1, "codec"    # Lorg/abtollc/utils/codec/Codec;
    .param p2, "newValue"    # S

    .prologue
    .line 550
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->CODEC_NB:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;Ljava/lang/String;S)V

    .line 551
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg;->CODEC_WB:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->setCodecPriority(Lorg/abtollc/utils/codec/Codec;Ljava/lang/String;S)V

    .line 552
    return-void
.end method

.method public setDTMFmode(Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;)V
    .locals 4
    .param p1, "mode"    # Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;

    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "dtmf_mode"

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$DTMF_MODE;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHangupTimeout(I)V
    .locals 3
    .param p1, "milis"    # I

    .prologue
    .line 875
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 876
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tsx_ctd_timeout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tsx_btd_timeout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method public setICEEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "enable_ice"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setKeepAliveInterval(Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;I)V
    .locals 3
    .param p1, "transport"    # Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;
    .param p2, "interval"    # I

    .prologue
    .line 853
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$1;->$SwitchMap$org$abtollc$sdk$AbtoPhoneCfg$SignalingTransportType:[I

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_0
    return-void

    .line 855
    :pswitch_0
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "keep_alive_interval_wifi"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "keep_alive_interval_mobile"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 859
    :pswitch_1
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tcp_keep_alive_interval_wifi"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tcp_keep_alive_interval_mobile"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :pswitch_2
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tls_keep_alive_interval_wifi"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tls_keep_alive_interval_mobile"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNetworkSelected(Lorg/abtollc/utils/network/NetworkType;Z)V
    .locals 3
    .param p1, "type"    # Lorg/abtollc/utils/network/NetworkType;
    .param p2, "selected"    # Z

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Lorg/abtollc/utils/network/NetworkType;->getInParamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 524
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {p1}, Lorg/abtollc/utils/network/NetworkType;->getOutParamNamem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRegisterTimeout(I)V
    .locals 3
    .param p1, "milis"    # I

    .prologue
    .line 870
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "tsx_rtd_timeout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 3
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 663
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "ringtone"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRingtone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "contact_uri"    # Ljava/lang/String;
    .param p2, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ringtone"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Lorg/abtollc/api/SipUri;->getSipNumberSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRtpPort(I)V
    .locals 4
    .param p1, "newPort"    # I

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "network_rtp_port"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSTUNEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "enable_stun"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSTUNServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "stun_server"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSignallingTransport(Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;)V
    .locals 4
    .param p1, "type"    # Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "signaling_transport"

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSipPort(I)V
    .locals 4
    .param p1, "newPort"    # I

    .prologue
    .line 629
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "network_udp_transport_port"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "network_tcp_transport_port"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "network_tls_transport_port"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTLSCAListFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "ca_list_file"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTLSMethod(Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;)V
    .locals 4
    .param p1, "method"    # Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "tls_method"

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$TLSMethod;->getMethod()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTLSServerName(Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "network_tls_server_name"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTLSVerifyServer(Z)V
    .locals 3
    .param p1, "verify"    # Z

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "tls_verify_server"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTURNEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "enable_turn"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTURNPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "turn_password"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTURNServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 470
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "turn_server"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTURNUsername(Ljava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "turn_username"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUseSRTP(Z)V
    .locals 4
    .param p1, "use"    # Z

    .prologue
    .line 789
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "use_srtp"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_1
    return-void

    .line 789
    :cond_0
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUseZRTP(Z)V
    .locals 4
    .param p1, "use"    # Z

    .prologue
    .line 806
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "use_zrtp"

    if-eqz p1, :cond_0

    const-string v1, "2"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_1
    return-void

    .line 806
    :cond_0
    const-string v1, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "user_agent"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoCallEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbtoPhoneConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQualityMode(Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;)V
    .locals 3
    .param p1, "mode"    # Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;

    .prologue
    .line 908
    sget-object v0, Lorg/abtollc/sdk/AbtoPhoneCfg$1;->$SwitchMap$org$abtollc$sdk$AbtoPhoneCfg$VIDEO_QUALITY_MODE:[I

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhoneCfg$VIDEO_QUALITY_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 919
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "video_capture_size"

    const-string v2, "352x288@30"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "codec_h264_profile"

    const-string v2, "66"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "codec_h264_level"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :goto_0
    return-void

    .line 911
    :pswitch_0
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "video_capture_size"

    const-string v2, "720x480@15"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "codec_h264_profile"

    const-string v2, "66"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mConfig:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "codec_h264_level"

    const-string v2, "22"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateAccount(Lorg/abtollc/api/SipProfile;)V
    .locals 7
    .param p1, "account"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 261
    invoke-virtual {p1}, Lorg/abtollc/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 263
    .local v0, "vals":Landroid/content/ContentValues;
    const-string v1, "acc_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhoneCfg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    sget-object v2, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const-string v3, "acc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    return-void
.end method
