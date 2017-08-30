.class public Lcom/weirdvoice/toolbox/AndroidId;
.super Ljava/lang/Object;
.source "AndroidId.java"


# static fields
.field private static final ID_PREF_NAME:Ljava/lang/String; = "zenitalk_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v7, 0x0

    .line 39
    .local v7, "tai":Ljava/lang/String;
    const-string v9, "zenitalk_id"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 40
    .local v4, "ptai":Landroid/content/SharedPreferences;
    const-string v9, "zenitalk_id"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    if-eqz v7, :cond_0

    move-object v9, v7

    .line 82
    :goto_0
    return-object v9

    .line 46
    :cond_0
    :try_start_0
    const-string v9, "wifi"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 47
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 48
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 51
    .end local v1    # "manager":Landroid/net/wifi/WifiManager;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    if-eqz v7, :cond_1

    const-string v9, "00:0c:e7:09:00:00"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 52
    const-string v9, "00:90:4C:C5:00:34"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 53
    const-string v9, "00:90:4c:c5:12:38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 54
    const-string v9, "00:00:00:00:00:00"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 55
    const-string v9, "00.00.00.00.00.00"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 56
    const-string v9, "00:00:00:00"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 57
    const-string v9, "00.00.00.00"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 58
    const-string v9, ":"

    const-string v10, "X"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 62
    :cond_1
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 63
    .local v6, "tMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 64
    if-eqz v7, :cond_2

    .line 65
    const-string v9, "000000000000000"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v7

    .line 66
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    if-eqz v7, :cond_3

    const-string v9, "9774d56d682e549c"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v7

    .line 72
    goto/16 :goto_0

    .line 75
    :cond_3
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 76
    .local v5, "random":Ljava/security/SecureRandom;
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 77
    .local v2, "l":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "zzz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "zenitalk_id"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v9, v7

    .line 82
    goto/16 :goto_0

    .line 49
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "l":J
    .end local v5    # "random":Ljava/security/SecureRandom;
    .end local v6    # "tMgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method

.method public getSipId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/weirdvoice/toolbox/AndroidId;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
