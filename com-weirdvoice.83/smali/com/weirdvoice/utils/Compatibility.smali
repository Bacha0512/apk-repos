.class public final Lcom/weirdvoice/utils/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Compat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static canMakeGSMCall(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 625
    .line 626
    const-string v1, "gsm_integration_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 625
    invoke-static {p0, v1, v2}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 627
    .local v0, "integType":I
    if-nez v0, :cond_0

    .line 628
    invoke-static {p0}, Lcom/weirdvoice/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 633
    :goto_0
    return v1

    .line 630
    :cond_0
    if-ne v0, v3, :cond_1

    .line 631
    const/4 v1, 0x0

    goto :goto_0

    .line 633
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getContactPhoneIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 650
    :goto_0
    return-object v0

    .line 647
    :cond_0
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "CPU_ABI"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 251
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Compat"

    const-string v3, "Announce to be android 1.6 but no CPU ABI field"

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :cond_0
    const-string v2, "armeabi"

    goto :goto_0
.end method

.method private static getDefaultAudioImplementation()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 424
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "picasso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :cond_2
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "ST25i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 431
    goto :goto_0

    .line 433
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "u8510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_4
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rk31sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getDefaultFrequency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olympus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "32000"

    .line 243
    :goto_0
    return-object v0

    .line 238
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-P1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "32000"

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "16000"

    goto :goto_0

    :cond_2
    const-string v0, "8000"

    goto :goto_0
.end method

.method public static getDefaultMicroSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHomeMenuId()I
    .locals 1

    .prologue
    .line 1043
    const v0, 0x102002c

    return v0
.end method

.method public static getInCallStream(Z)I
    .locals 2
    .param p0, "requestBluetooth"    # Z

    .prologue
    .line 75
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x3

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    const/4 v0, 0x6

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getNumCores()I
    .locals 4

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/weirdvoice/utils/Compatibility$1CpuFilter;

    invoke-direct {v3}, Lcom/weirdvoice/utils/Compatibility$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 278
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    goto :goto_0
.end method

.method public static getWifiSleepPolicy(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "ctntResolver"    # Landroid/content/ContentResolver;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1088
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const-string v0, "wifi_sleep_policy"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1091
    :goto_0
    return v0

    :cond_0
    const-string v0, "wifi_sleep_policy"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getWifiSleepPolicyDefault()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1100
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    :cond_0
    return v1
.end method

.method public static getWifiSleepPolicyNever()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1112
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    :cond_0
    return v1
.end method

.method public static guessInCallMode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 186
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 190
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "sdg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_1
    const-string v0, "3"

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "blade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompatible(I)Z
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInstalledOnSdCard(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x40000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1049
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1050
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1052
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1053
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1054
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 1078
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v5

    .line 1054
    goto :goto_0

    .line 1061
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 1068
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "filesDir":Ljava/lang/String;
    const-string v6, "/data/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 1070
    goto :goto_0

    .line 1071
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .end local v1    # "filesDir":Ljava/lang/String;
    :goto_1
    move v4, v5

    .line 1078
    goto :goto_0

    .line 1074
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static isTabletScreen(Landroid/content/Context;)Z
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 1019
    const/4 v3, 0x0

    .line 1020
    .local v3, "isTablet":Z
    invoke-static {v9}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 1039
    :goto_0
    return v6

    .line 1023
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1024
    .local v0, "cfg":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    .line 1026
    .local v5, "screenLayoutVal":I
    :try_start_0
    const-class v6, Landroid/content/res/Configuration;

    const-string v8, "screenLayout"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1027
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1031
    and-int/lit8 v4, v5, 0xf

    .line 1033
    .local v4, "screenLayout":I
    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    if-ne v4, v9, :cond_2

    .line 1036
    :cond_1
    const/4 v3, 0x1

    :cond_2
    move v6, v3

    .line 1039
    goto :goto_0

    .line 1028
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "screenLayout":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v6, v7

    .line 1029
    goto :goto_0
.end method

.method private static needPspWorkaround()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 293
    goto :goto_0

    .line 297
    :cond_2
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 299
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "hero"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 305
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "magic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 311
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "tatoo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 312
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "dream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 318
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "legend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 321
    goto :goto_0

    .line 326
    :cond_5
    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 331
    goto/16 :goto_0

    .line 338
    :cond_6
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "streak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    :cond_7
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "milestone2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 344
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 345
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 346
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "olympus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 347
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "umts_jordan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    :cond_9
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "XT320"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "one_touch_990"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 360
    goto/16 :goto_0
.end method

.method private static needSGSWorkaround()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 373
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static needToneWorkaround()Z
    .locals 2

    .prologue
    .line 364
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i9003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needWebRTCImplementation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 384
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid bionic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sunfire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8833"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetCodecsSettings(Lcom/weirdvoice/utils/PreferencesWrapper;)V
    .locals 6
    .param p0, "preferencesWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, "supportFloating":Z
    const/4 v1, 0x0

    .line 445
    .local v1, "isHeavyCpu":Z
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 447
    const-string v3, "mips"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    :cond_0
    const/4 v2, 0x1

    .line 450
    :cond_1
    const-string v3, "armeabi-v7a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    :cond_2
    const/4 v1, 0x1

    .line 456
    :cond_3
    const-string v3, "PCMU/8000/1"

    const-string v4, "nb"

    const-string v5, "60"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v3, "PCMA/8000/1"

    const-string v4, "nb"

    const-string v5, "50"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "speex/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "speex/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "speex/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v3, "GSM/8000/1"

    const-string v4, "nb"

    const-string v5, "230"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v3, "G722/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v3, "G729/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "iLBC/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v3, "SILK/8000/1"

    const-string v4, "nb"

    const-string v5, "239"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v3, "SILK/12000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v3, "SILK/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v3, "SILK/24000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v3, "CODEC2/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v3, "G7221/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v3, "G7221/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v3, "ISAC/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v3, "ISAC/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v3, "AMR/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v3, "AMR-WB/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v3, "opus/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v3, "opus/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "opus/24000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "opus/48000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v3, "G726-16/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v3, "G726-24/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "G726-32/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "G726-40/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v3, "mpeg4-generic/48000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "PCMU/8000/1"

    const-string v4, "wb"

    const-string v5, "60"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v3, "PCMA/8000/1"

    const-string v4, "wb"

    const-string v5, "50"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v3, "speex/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v3, "speex/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v3, "speex/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v3, "GSM/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v4, "G722/16000/1"

    const-string v5, "wb"

    .line 494
    if-eqz v2, :cond_4

    const-string v3, "235"

    .line 493
    :goto_0
    invoke-virtual {p0, v4, v5, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v3, "G729/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v3, "iLBC/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v3, "SILK/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v3, "SILK/12000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v4, "SILK/16000/1"

    const-string v5, "wb"

    .line 500
    if-eqz v1, :cond_5

    const-string v3, "0"

    .line 499
    :goto_1
    invoke-virtual {p0, v4, v5, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, "SILK/24000/1"

    const-string v5, "wb"

    .line 502
    if-eqz v1, :cond_6

    const-string v3, "220"

    .line 501
    :goto_2
    invoke-virtual {p0, v4, v5, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v3, "CODEC2/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v3, "G7221/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v3, "G7221/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v3, "ISAC/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v3, "ISAC/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v3, "AMR/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v3, "AMR-WB/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v3, "opus/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v3, "opus/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "opus/24000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v3, "opus/48000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "G726-16/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v3, "G726-24/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v3, "G726-32/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v3, "G726-40/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v3, "mpeg4-generic/48000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v3, v4, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v3, "band_for_wifi"

    const-string v4, "wb"

    invoke-virtual {p0, v3, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v3, "band_for_other"

    const-string v4, "wb"

    invoke-virtual {p0, v3, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v3, "band_for_3g"

    const-string v4, "nb"

    invoke-virtual {p0, v3, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v3, "band_for_gprs"

    const-string v4, "nb"

    invoke-virtual {p0, v3, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v3, "band_for_edge"

    const-string v4, "nb"

    invoke-virtual {p0, v3, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void

    .line 494
    :cond_4
    const-string v3, "0"

    goto/16 :goto_0

    .line 500
    :cond_5
    const-string v3, "220"

    goto/16 :goto_1

    .line 502
    :cond_6
    const-string v3, "0"

    goto/16 :goto_2
.end method

.method public static setExactAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "alarmType"    # I
    .param p2, "firstTime"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1141
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setFirstRunParameters(Lcom/weirdvoice/utils/PreferencesWrapper;)V
    .locals 7
    .param p0, "preferencesWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    const/16 v6, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 530
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 531
    invoke-static {p0}, Lcom/weirdvoice/utils/Compatibility;->resetCodecsSettings(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 533
    const-string v4, "snd_media_quality"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v1

    .line 534
    const-string v5, "armeabi-v7a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "4"

    .line 533
    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v4, "snd_auto_close_time"

    .line 536
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    .line 535
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "snd_clock_rate"

    .line 538
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "keep_awake_incall"

    .line 541
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 540
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 542
    const-string v4, "media_thread_count"

    .line 543
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getNumCores()I

    move-result v1

    if-le v1, v3, :cond_8

    const-string v1, "2"

    .line 542
    :goto_2
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "SPH-M900"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "invert_proximity_sensor"

    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 552
    :cond_0
    const-string v4, "prevent_screen_rotation"

    .line 553
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 552
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 556
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    const-string v1, "snd_mic_level"

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 558
    const-string v1, "snd_speaker_level"

    .line 559
    const v4, 0x3e4ccccd    # 0.2f

    .line 558
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 560
    const-string v1, "use_soft_volume"

    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 563
    :cond_1
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "htc_supersonic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 564
    const-string v1, "snd_mic_level"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 565
    const-string v1, "snd_speaker_level"

    .line 566
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 565
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 571
    :cond_2
    const-string v1, "use_routing_api"

    .line 572
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 571
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 573
    const-string v1, "use_mode_api"

    .line 574
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 573
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 575
    const-string v1, "set_audio_generate_tone"

    .line 576
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    .line 575
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 577
    const-string v1, "use_sgs_call_hack"

    .line 578
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needSGSWorkaround()Z

    move-result v4

    .line 577
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 579
    const-string v1, "sip_audio_mode"

    .line 580
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    .line 579
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v1, "micro_source"

    .line 582
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 581
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v1, "use_webrtc_hack"

    .line 584
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 583
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 585
    const-string v1, "do_focus_audio"

    .line 586
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldFocusAudio()Z

    move-result v4

    .line 585
    invoke-virtual {p0, v1, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 588
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v0

    .line 589
    .local v0, "usePriviledged":Z
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 591
    if-eqz v0, :cond_4

    .line 592
    const-string v1, "integrate_with_native_dialer"

    .line 593
    if-eqz v0, :cond_3

    move v3, v2

    .line 592
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 596
    :cond_4
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "GoGear_Connect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 597
    const-string v1, "integrate_with_native_calllogs"

    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 601
    :cond_5
    const-string v1, "audio_implementation"

    .line 602
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "setup_audio_before_init"

    .line 604
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldSetupAudioBeforeInit()Z

    move-result v2

    .line 603
    invoke-virtual {p0, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 606
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 607
    return-void

    .line 534
    .end local v0    # "usePriviledged":Z
    :cond_6
    const-string v1, "3"

    goto/16 :goto_0

    .line 536
    :cond_7
    const-string v1, "5"

    goto/16 :goto_1

    .line 543
    :cond_8
    const-string v1, "1"

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 553
    goto/16 :goto_3
.end method

.method public static setWifiSleepPolicy(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "ctntResolver"    # Landroid/content/ContentResolver;
    .param p1, "policy"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1126
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    const-string v0, "wifi_sleep_policy"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1132
    :cond_0
    return-void
.end method

.method private static shouldFocusAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 411
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endeavoru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "evita"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P7510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldSetupAudioBeforeInit()Z
    .locals 2

    .prologue
    .line 402
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseModeApi()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 121
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "blade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "joe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YP-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "htc_supersonic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thunder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG-E720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :cond_2
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "g2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :cond_3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "U8100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "U8836"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "U8655"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HWU9700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "XT320"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ONE_TOUCH_993D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAKO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static shouldUsePriviledgedIntegration(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 655
    invoke-static {p0}, Lcom/weirdvoice/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldUseRoutingApi()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 92
    const-string v1, "Compat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "htc_supersonic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "joe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateApiVersion(Lcom/weirdvoice/utils/PreferencesWrapper;II)V
    .locals 3
    .param p0, "prefWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 988
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 993
    const-string v0, "use_routing_api"

    .line 994
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v1

    .line 993
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 995
    const-string v0, "use_mode_api"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 996
    const-string v0, "set_audio_generate_tone"

    .line 997
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needToneWorkaround()Z

    move-result v1

    .line 996
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 998
    const-string v0, "use_sgs_call_hack"

    .line 999
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needSGSWorkaround()Z

    move-result v1

    .line 998
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1000
    const-string v0, "sip_audio_mode"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v0, "micro_source"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    const-string v0, "snd_mic_level"

    invoke-virtual {p0, v0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 1005
    const-string v0, "snd_speaker_level"

    invoke-virtual {p0, v0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 1006
    const-string v0, "use_soft_volume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1009
    :cond_0
    const-string v0, "keep_awake_incall"

    .line 1010
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v1

    .line 1009
    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1011
    const-string v0, "do_focus_audio"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldFocusAudio()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 1016
    return-void
.end method

.method public static updateVersion(Lcom/weirdvoice/utils/PreferencesWrapper;II)V
    .locals 8
    .param p0, "prefWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/16 v7, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 661
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->startEditing()V

    .line 662
    const/16 v2, 0xe

    if-ge p1, v2, :cond_1

    .line 665
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-I9000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    const-string v2, "snd_mic_level"

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 668
    const-string v2, "snd_speaker_level"

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 672
    :cond_0
    const-string v2, "stun_server"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 672
    if-eqz v2, :cond_1

    .line 673
    const-string v2, "stun_server"

    .line 674
    const-string v5, "stun.counterpath.com"

    .line 673
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_1
    const/16 v2, 0xf

    if-ge p1, v2, :cond_2

    .line 678
    const-string v2, "enable_stun"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 681
    :cond_2
    const/16 v2, 0x171

    if-ge p1, v2, :cond_3

    .line 683
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-I9000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v7}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 684
    const-string v2, "use_soft_volume"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 689
    :cond_3
    const/16 v2, 0x181

    if-ge p1, v2, :cond_4

    .line 690
    const-string v2, "use_routing_api"

    .line 691
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v5

    .line 690
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 693
    const-string v2, "use_mode_api"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 695
    const-string v2, "sip_audio_mode"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_4
    const/16 v2, 0x23f

    if-ge p1, v2, :cond_7

    .line 698
    const-string v2, "set_audio_generate_tone"

    .line 699
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needToneWorkaround()Z

    move-result v5

    .line 698
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 701
    if-lez p1, :cond_5

    .line 702
    const-string v2, "has_already_setup_service"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 705
    :cond_5
    const-string v2, "enable_qos"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 707
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "htc_supersonic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 708
    const-string v2, "snd_mic_level"

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 710
    const-string v2, "snd_speaker_level"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 711
    const-string v2, "use_routing_api"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 714
    :cond_6
    const-string v2, "keep_awake_incall"

    .line 715
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v5

    .line 714
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 717
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "SPH-M900"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 721
    const-string v2, "invert_proximity_sensor"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 725
    :cond_7
    const/16 v2, 0x24f

    if-ge p1, v2, :cond_8

    .line 726
    invoke-static {p0}, Lcom/weirdvoice/utils/Compatibility;->resetCodecsSettings(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 728
    :cond_8
    const/16 v2, 0x254

    if-ge p1, v2, :cond_9

    .line 730
    const-string v2, "use_mode_api"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 732
    :cond_9
    const/16 v2, 0x265

    if-ge p1, v2, :cond_a

    .line 733
    invoke-static {p0}, Lcom/weirdvoice/utils/Compatibility;->resetCodecsSettings(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 735
    :cond_a
    const/16 v2, 0x2c0

    if-ge p1, v2, :cond_b

    .line 736
    const-string v2, "use_sgs_call_hack"

    .line 737
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needSGSWorkaround()Z

    move-result v5

    .line 736
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 739
    :cond_b
    const/16 v2, 0x31a

    if-ge p1, v2, :cond_c

    .line 740
    const-string v2, "micro_source"

    .line 741
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v5

    .line 740
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v2, "snd_clock_rate"

    .line 743
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v2, "keep_awake_incall"

    .line 745
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v5

    .line 744
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 747
    :cond_c
    const/16 v2, 0x32e

    if-ge p1, v2, :cond_d

    .line 750
    const-string v2, "network_tcp_transport_port"

    const-string v5, "0"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v2, "network_udp_transport_port"

    const-string v5, "0"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v2, "network_tls_transport_port"

    const-string v5, "0"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_d
    const/16 v2, 0x372

    if-ge p1, v2, :cond_e

    .line 756
    const-string v2, "G7221/16000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v2, "G7221/32000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_e
    const/16 v2, 0x38a

    if-ge p1, v2, :cond_f

    .line 760
    const-string v5, "prevent_screen_rotation"

    .line 761
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 760
    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 763
    :cond_f
    const/16 v2, 0x38f

    if-ge p1, v2, :cond_10

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-I9100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 764
    const-string v2, "micro_source"

    .line 765
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v2, "sip_audio_mode"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_10
    const/16 v2, 0x393

    if-ge p1, v2, :cond_11

    .line 771
    const-string v2, "keep_awake_incall"

    .line 772
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v5

    .line 771
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 774
    :cond_11
    const/16 v2, 0x3ab

    if-ge p1, v2, :cond_12

    .line 775
    const-string v2, "do_focus_audio"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 777
    :cond_12
    const/16 v2, 0x3bb

    if-ge p1, v2, :cond_13

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "droid2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 778
    const-string v2, "use_webrtc_hack"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 780
    :cond_13
    const/16 v2, 0x3e5

    if-ge p1, v2, :cond_14

    .line 782
    const-string v2, "echo_cancellation"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 783
    const-string v2, "echo_mode"

    const-string v5, "3"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v2, "ISAC/16000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v2, "ISAC/32000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v2, "ISAC/16000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v2, "ISAC/32000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v2, "AMR/8000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v2, "AMR/8000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v2, "G7221/16000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v2, "G7221/32000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_14
    const/16 v2, 0x3ee

    if-ge p1, v2, :cond_15

    .line 800
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "U8100"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 801
    const-string v2, "use_mode_api"

    .line 802
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 801
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 805
    :cond_15
    const/16 v2, 0x409

    if-ge p1, v2, :cond_16

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "thunder"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 807
    const-string v2, "use_mode_api"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 809
    :cond_16
    const/16 v2, 0x434

    if-ge p1, v2, :cond_17

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-P1010"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 810
    const-string v2, "snd_clock_rate"

    .line 811
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v5

    .line 810
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_17
    const/16 v2, 0x455

    if-ge p1, v2, :cond_18

    .line 814
    const-string v2, "timer_min_se"

    const-string v5, "90"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v2, "timer_sess_expires"

    const-string v5, "1800"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {p0}, Lcom/weirdvoice/utils/Compatibility;->resetCodecsSettings(Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 818
    :cond_18
    const/16 v2, 0x62d

    if-ge p1, v2, :cond_19

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 819
    const-string v2, "use_webrtc_hack"

    .line 820
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v5

    .line 819
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 822
    :cond_19
    const/16 v2, 0x662

    if-ge p1, v2, :cond_1a

    .line 823
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "gt-i9003"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 824
    const-string v2, "set_audio_generate_tone"

    .line 825
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needToneWorkaround()Z

    move-result v5

    .line 824
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 828
    :cond_1a
    const/16 v2, 0x675

    if-ge p1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 829
    const-string v2, "integrate_tel_privileged"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 831
    :cond_1b
    const/16 v2, 0x698

    if-ge p1, v2, :cond_1c

    .line 832
    const-string v2, "thread_count"

    const-string v5, "0"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_1c
    const/16 v2, 0x6c1

    if-ge p1, v2, :cond_1e

    .line 835
    const-string v2, "audio_implementation"

    .line 836
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-S"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 839
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "U8655"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 840
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "joe"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 841
    :cond_1d
    const-string v2, "use_mode_api"

    .line 842
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 841
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 843
    const-string v2, "use_routing_api"

    .line 844
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v5

    .line 843
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 847
    :cond_1e
    const/16 v2, 0x6d8

    if-ge p1, v2, :cond_1f

    .line 848
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v1

    .line 849
    .local v1, "usePriv":Z
    if-eqz v1, :cond_1f

    .line 850
    const-string v2, "integrate_tel_privileged"

    invoke-virtual {p0, v2, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 852
    const-string v5, "integrate_with_native_dialer"

    .line 853
    if-eqz v1, :cond_3c

    move v2, v3

    .line 852
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 856
    .end local v1    # "usePriv":Z
    :cond_1f
    const/16 v2, 0x6f1

    if-ge p1, v2, :cond_20

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "one_touch_990"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 857
    const-string v2, "keep_awake_incall"

    .line 858
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v5

    .line 857
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 861
    :cond_20
    const/16 v2, 0x706

    if-ge p1, v2, :cond_21

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "picasso"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 862
    const-string v2, "audio_implementation"

    .line 863
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 862
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_21
    const/16 v2, 0x72a

    if-ge p1, v2, :cond_22

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldFocusAudio()Z

    move-result v2

    if-nez v2, :cond_22

    .line 866
    const-string v2, "do_focus_audio"

    .line 867
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldFocusAudio()Z

    move-result v5

    .line 866
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 869
    :cond_22
    const/16 v2, 0x78b

    if-ge p1, v2, :cond_23

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "ST25i"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 870
    const-string v2, "audio_implementation"

    .line 871
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 870
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_23
    const/16 v2, 0x797

    if-ge p1, v2, :cond_25

    .line 874
    const-string v2, "setup_audio_before_init"

    .line 875
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldSetupAudioBeforeInit()Z

    move-result v5

    .line 874
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 876
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 877
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GT-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 878
    :cond_24
    const-string v2, "use_mode_api"

    .line 879
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 878
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 882
    :cond_25
    const/16 v2, 0x7da

    if-ge p1, v2, :cond_26

    .line 883
    const-string v2, "dtmf_press_tone_mode"

    .line 884
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 883
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_26
    const/16 v2, 0x7ee

    if-ge p1, v2, :cond_29

    .line 887
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LG-E720"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 888
    invoke-static {v7}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 889
    :cond_27
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "XT320"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 890
    :cond_28
    const-string v2, "use_mode_api"

    .line 891
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 890
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 894
    :cond_29
    const/16 v2, 0x804

    if-ge p1, v2, :cond_2a

    .line 895
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "u8510"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 896
    const-string v2, "audio_implementation"

    .line 897
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 896
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_2a
    const/16 v2, 0x815

    if-ge p1, v2, :cond_2b

    .line 901
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ONE_TOUCH_993D"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 902
    const-string v2, "use_mode_api"

    .line 903
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 902
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 906
    :cond_2b
    const/16 v2, 0x821

    if-ge p1, v2, :cond_2c

    .line 907
    const-string v2, "disable_rport"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 909
    :cond_2c
    const/16 v2, 0x839

    if-ge p1, v2, :cond_2d

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cayman"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 910
    const-string v2, "use_mode_api"

    .line 911
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 910
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 913
    :cond_2d
    const/16 v2, 0x83f

    if-ge p1, v2, :cond_2e

    .line 914
    const-string v2, "media_thread_count"

    const-string v5, "2"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v2, "has_io_queue"

    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 917
    :cond_2e
    const/16 v2, 0x863

    if-ge p1, v2, :cond_2f

    .line 918
    const-string v2, "dscp_rtp_val"

    const-string v5, "48"

    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_2f
    const/16 v2, 0x87c

    if-ge p1, v2, :cond_30

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MAKO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 922
    const-string v2, "use_mode_api"

    .line 923
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v5

    .line 922
    invoke-virtual {p0, v2, v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 926
    :cond_30
    const/16 v2, 0x87f

    if-ge p1, v2, :cond_31

    .line 928
    const-string v2, "AMR-WB/16000/1"

    const-string v5, "wb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v2, "AMR-WB/16000/1"

    const-string v5, "nb"

    const-string v6, "0"

    invoke-virtual {p0, v2, v5, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_31
    const/16 v2, 0x893

    if-ge p1, v2, :cond_32

    .line 932
    const-string v5, "media_thread_count"

    .line 933
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getNumCores()I

    move-result v2

    if-le v2, v4, :cond_3d

    const-string v2, "2"

    .line 932
    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_32
    const/16 v2, 0x89a

    if-ge p1, v2, :cond_33

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "U8833"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 936
    const-string v2, "use_webrtc_hack"

    .line 937
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 936
    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 939
    :cond_33
    const/16 v2, 0x8ce

    if-ge p1, v2, :cond_34

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "XT320"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 940
    const-string v2, "keep_awake_incall"

    .line 941
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 940
    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 943
    :cond_34
    const/16 v2, 0x8f9

    if-ge p1, v2, :cond_35

    .line 944
    const-string v2, "unlocker_type"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_35
    const/16 v2, 0x8fe

    if-ge p1, v2, :cond_36

    .line 947
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "U8836"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 948
    const-string v2, "use_mode_api"

    .line 949
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v3

    .line 948
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 952
    :cond_36
    const/16 v2, 0x92c

    if-ge p1, v2, :cond_37

    .line 953
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "g2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 954
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 955
    const-string v2, "use_mode_api"

    .line 956
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v3

    .line 955
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 959
    :cond_37
    const/16 v2, 0x972

    if-ge p1, v2, :cond_38

    .line 960
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HWU9700"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 961
    const-string v2, "use_mode_api"

    .line 962
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->shouldUseModeApi()Z

    move-result v3

    .line 961
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 965
    :cond_38
    const/16 v2, 0x98a

    if-ge p1, v2, :cond_39

    .line 966
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rk31sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 967
    const-string v2, "audio_implementation"

    .line 968
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 967
    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_39
    const/16 v2, 0x999

    if-ge p1, v2, :cond_3a

    .line 973
    const-string v2, "tls_method"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "method":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 975
    const-string v2, "tls_method"

    const-string v3, "31"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .end local v0    # "method":Ljava/lang/String;
    :cond_3a
    :goto_3
    invoke-virtual {p0}, Lcom/weirdvoice/utils/PreferencesWrapper;->endEditing()V

    .line 984
    return-void

    :cond_3b
    move v2, v4

    .line 761
    goto/16 :goto_0

    .restart local v1    # "usePriv":Z
    :cond_3c
    move v2, v4

    .line 853
    goto/16 :goto_1

    .line 933
    .end local v1    # "usePriv":Z
    :cond_3d
    const-string v2, "1"

    goto/16 :goto_2

    .line 976
    .restart local v0    # "method":Ljava/lang/String;
    :cond_3e
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 977
    const-string v2, "tls_method"

    const-string v3, "20"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 978
    :cond_3f
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 979
    const-string v2, "tls_method"

    const-string v3, "30"

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static useFlipAnimation()Z
    .locals 2

    .prologue
    .line 610
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
