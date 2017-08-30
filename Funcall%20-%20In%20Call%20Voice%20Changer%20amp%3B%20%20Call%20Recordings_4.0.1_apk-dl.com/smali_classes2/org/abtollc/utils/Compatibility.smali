.class public final Lorg/abtollc/utils/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Compat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static canMakeGSMCall(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    new-instance v0, Lorg/abtollc/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 518
    .local v0, "prefs":Lorg/abtollc/utils/PreferencesWrapper;
    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->getGsmIntegrationType()I

    move-result v1

    if-nez v1, :cond_0

    .line 519
    invoke-static {p0}, Lorg/abtollc/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 524
    :goto_0
    return v1

    .line 521
    :cond_0
    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesWrapper;->getGsmIntegrationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 522
    const/4 v1, 0x0

    goto :goto_0

    .line 524
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getContactPhoneIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 542
    :goto_0
    return-object v0

    .line 539
    :cond_0
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const/4 v2, 0x4

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "CPU_ABI"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 200
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Compat"

    const-string v3, "Announce to be android 1.6 but no CPU ABI field"

    invoke-static {v2, v3, v0}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    const-string v2, "armeabi"

    goto :goto_0
.end method

.method private static getDefaultAudioImplementation()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 334
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "picasso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const/16 v2, 0xb

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 339
    goto :goto_0

    .line 341
    :cond_2
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "ST25i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public static getDefaultFrequency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olympus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "32000"

    .line 192
    :goto_0
    return-object v0

    .line 187
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-P1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "32000"

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

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
    .line 156
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHomeMenuId()I
    .locals 1

    .prologue
    .line 851
    const v0, 0x102002c

    return v0
.end method

.method public static getInCallStream()I
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x3

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static guessInCallMode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 135
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 139
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "sdg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    :cond_1
    const-string v0, "3"

    goto :goto_0

    .line 143
    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "blade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompatible(I)Z
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 34
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

    .line 858
    const/16 v6, 0x8

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 861
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 862
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 863
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 881
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

    .line 863
    goto :goto_0

    .line 864
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 871
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "filesDir":Ljava/lang/String;
    const-string v6, "/data/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 873
    goto :goto_0

    .line 874
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

    .line 881
    goto :goto_0

    .line 877
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

    .line 827
    const/4 v3, 0x0

    .line 828
    .local v3, "isTablet":Z
    invoke-static {v9}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 847
    :goto_0
    return v6

    .line 831
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 832
    .local v0, "cfg":Landroid/content/res/Configuration;
    const/4 v5, 0x0

    .line 834
    .local v5, "screenLayoutVal":I
    :try_start_0
    const-class v6, Landroid/content/res/Configuration;

    const-string v8, "screenLayout"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 835
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 839
    and-int/lit8 v4, v5, 0xf

    .line 841
    .local v4, "screenLayout":I
    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    if-ne v4, v9, :cond_2

    .line 844
    :cond_1
    const/4 v3, 0x1

    :cond_2
    move v6, v3

    .line 847
    goto :goto_0

    .line 836
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "screenLayout":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v6, v7

    .line 837
    goto :goto_0
.end method

.method private static needPspWorkaround()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 211
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    const/16 v2, 0xb

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 218
    goto :goto_0

    .line 222
    :cond_2
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 229
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "hero"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "magic"

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "tatoo"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "dream"

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "legend"

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 246
    goto :goto_0

    .line 251
    :cond_5
    invoke-static {v4}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "passion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 263
    :cond_6
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "streak"

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    :cond_7
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "milestone2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 269
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "olympus"

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "umts_jordan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-static {v4}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    move v0, v1

    .line 276
    goto/16 :goto_0
.end method

.method private static needSGSWorkaround()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 289
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-I9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static needToneWorkaround()Z
    .locals 2

    .prologue
    .line 280
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i5801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i9003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 285
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

    .line 300
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "droid bionic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetCodecsSettings(Lorg/abtollc/utils/PreferencesWrapper;)V
    .locals 5
    .param p0, "preferencesWrapper"    # Lorg/abtollc/utils/PreferencesWrapper;

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "supportFloating":Z
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    const-string v2, "mips"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    :cond_0
    const/4 v1, 0x1

    .line 357
    :cond_1
    const-string v2, "PCMU/8000/1"

    const-string v3, "nb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "PCMA/8000/1"

    const-string v3, "nb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v2, "speex/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "speex/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "speex/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "GSM/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "G722/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "G729/8000/1"

    const-string v3, "nb"

    const-string v4, "250"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "iLBC/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "SILK/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "SILK/12000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "SILK/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v2, "SILK/24000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v2, "CODEC2/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "G7221/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "G7221/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "ISAC/16000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "ISAC/32000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v2, "AMR/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "opus/48000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "G726-16/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v2, "G726-24/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "G726-32/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "G726-40/8000/1"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "H264/97"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "H263-1998/96"

    const-string v3, "nb"

    const-string v4, "250"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "VP8/102"

    const-string v3, "nb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "PCMU/8000/1"

    const-string v3, "wb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v2, "PCMA/8000/1"

    const-string v3, "wb"

    const-string v4, "50"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v2, "speex/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v2, "speex/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v2, "speex/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "GSM/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "G722/16000/1"

    const-string v4, "wb"

    if-eqz v1, :cond_2

    const-string v2, "235"

    :goto_0
    invoke-virtual {p0, v3, v4, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "G729/8000/1"

    const-string v3, "wb"

    const-string v4, "250"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "iLBC/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "SILK/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v2, "SILK/12000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v2, "SILK/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "SILK/24000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v2, "CODEC2/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "G7221/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v2, "G7221/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "ISAC/16000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, "ISAC/32000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v2, "AMR/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "opus/48000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "G726-16/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "G726-24/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "G726-32/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "G726-40/8000/1"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v2, "H264/97"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "H263-1998/96"

    const-string v3, "wb"

    const-string v4, "250"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "VP8/102"

    const-string v3, "wb"

    const-string v4, "0"

    invoke-virtual {p0, v2, v3, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v2, "band_for_wifi"

    const-string v3, "wb"

    invoke-virtual {p0, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "band_for_other"

    const-string v3, "wb"

    invoke-virtual {p0, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "band_for_3g"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "band_for_gprs"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "band_for_edge"

    const-string v3, "nb"

    invoke-virtual {p0, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void

    .line 392
    :cond_2
    const-string v2, "0"

    goto/16 :goto_0
.end method

.method public static setFirstRunParameters(Lorg/abtollc/utils/PreferencesWrapper;)V
    .locals 7
    .param p0, "preferencesWrapper"    # Lorg/abtollc/utils/PreferencesWrapper;

    .prologue
    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 425
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 426
    invoke-static {p0}, Lorg/abtollc/utils/Compatibility;->resetCodecsSettings(Lorg/abtollc/utils/PreferencesWrapper;)V

    .line 428
    const-string v4, "snd_media_quality"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getCpuAbi()Ljava/lang/String;

    move-result-object v1

    const-string v5, "armeabi-v7a"

    .line 429
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "4"

    .line 428
    :goto_0
    invoke-virtual {p0, v4, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v4, "snd_auto_close_time"

    const/4 v1, 0x4

    .line 431
    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    .line 430
    :goto_1
    invoke-virtual {p0, v4, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "snd_clock_rate"

    .line 433
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "keep_awake_incall"

    .line 436
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 435
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 439
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "SPH-M900"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "invert_proximity_sensor"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 445
    :cond_0
    const-string v4, "prevent_screen_rotation"

    .line 446
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 445
    :goto_2
    invoke-virtual {p0, v4, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 449
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    const-string v1, "snd_mic_level"

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 451
    const-string v1, "snd_speaker_level"

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 453
    const-string v1, "use_soft_volume"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 456
    :cond_1
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "htc_supersonic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    const-string v1, "snd_mic_level"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 458
    const-string v1, "snd_speaker_level"

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 464
    :cond_2
    const-string v1, "use_routing_api"

    .line 465
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 464
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 466
    const-string v1, "use_mode_api"

    .line 467
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 466
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 468
    const-string v1, "set_audio_generate_tone"

    .line 469
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    .line 468
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 470
    const-string v1, "use_sgs_call_hack"

    .line 471
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needSGSWorkaround()Z

    move-result v4

    .line 470
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 472
    const-string v1, "sip_audio_mode"

    .line 473
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "micro_source"

    .line 475
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "use_webrtc_hack"

    .line 477
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 476
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 478
    const-string v1, "do_focus_audio"

    .line 479
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldFocusAudio()Z

    move-result v4

    .line 478
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 481
    const-string v1, "use_alternate_unlocker"

    .line 482
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/abtollc/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v4

    .line 481
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 484
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v0

    .line 485
    .local v0, "usePriviledged":Z
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v0}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 486
    if-eqz v0, :cond_3

    .line 487
    const-string v1, "integrate_with_native_dialer"

    if-nez v0, :cond_8

    :goto_3
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 490
    :cond_3
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "GoGear_Connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    const-string v1, "integrate_with_native_calllogs"

    invoke-virtual {p0, v1, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 494
    :cond_4
    const-string v1, "audio_implementation"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "setup_audio_before_init"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldSetupAudioBeforeInit()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 497
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 498
    return-void

    .line 429
    .end local v0    # "usePriviledged":Z
    :cond_5
    const-string v1, "3"

    goto/16 :goto_0

    .line 431
    :cond_6
    const-string v1, "5"

    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 446
    goto/16 :goto_2

    .restart local v0    # "usePriviledged":Z
    :cond_8
    move v2, v3

    .line 487
    goto :goto_3
.end method

.method private static shouldFocusAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 321
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endeavoru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "evita"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-P7510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldSetupAudioBeforeInit()Z
    .locals 2

    .prologue
    .line 311
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseModeApi()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    const-string v2, "Compat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/16 v2, 0x9

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "blade"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "joe"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "GT-I5500"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :cond_4
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GT-S5360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GT-S5830"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 110
    goto :goto_0

    .line 114
    :cond_6
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "htc_supersonic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_7
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thunder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 119
    goto :goto_0

    .line 123
    :cond_8
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "U8150"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "U8110"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "U8120"

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "U8100"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    move v0, v1

    .line 127
    goto/16 :goto_0
.end method

.method private static shouldUsePriviledgedIntegration(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 547
    invoke-static {p0}, Lorg/abtollc/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseRoutingApi()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    const-string v2, "Compat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v2, 0x9

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "htc_supersonic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    :cond_2
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "joe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 72
    goto :goto_0

    .line 76
    :cond_3
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GT-S5830"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_4
    const/4 v2, 0x4

    invoke-static {v2}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public static updateApiVersion(Lorg/abtollc/utils/PreferencesWrapper;II)V
    .locals 3
    .param p0, "prefWrapper"    # Lorg/abtollc/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 796
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 801
    const-string v0, "use_routing_api"

    .line 802
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v1

    .line 801
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 803
    const-string v0, "use_mode_api"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 804
    const-string v0, "set_audio_generate_tone"

    .line 805
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needToneWorkaround()Z

    move-result v1

    .line 804
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 806
    const-string v0, "use_sgs_call_hack"

    .line 807
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needSGSWorkaround()Z

    move-result v1

    .line 806
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 808
    const-string v0, "sip_audio_mode"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "micro_source"

    .line 810
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const-string v0, "snd_mic_level"

    invoke-virtual {p0, v0, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 813
    const-string v0, "snd_speaker_level"

    invoke-virtual {p0, v0, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 814
    const-string v0, "use_soft_volume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 817
    :cond_0
    const-string v0, "keep_awake_incall"

    .line 818
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v1

    .line 817
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 819
    const-string v0, "do_focus_audio"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldFocusAudio()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 823
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 824
    return-void
.end method

.method public static updateVersion(Lorg/abtollc/utils/PreferencesWrapper;II)V
    .locals 7
    .param p0, "prefWrapper"    # Lorg/abtollc/utils/PreferencesWrapper;
    .param p1, "lastSeenVersion"    # I
    .param p2, "runningVersion"    # I

    .prologue
    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 553
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->startEditing()V

    .line 554
    const/16 v1, 0xe

    if-ge p1, v1, :cond_1

    .line 557
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    const-string v1, "snd_mic_level"

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 559
    const-string v1, "snd_speaker_level"

    const v4, 0x3e4ccccd    # 0.2f

    .line 560
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 563
    :cond_0
    const-string v1, "stun_server"

    .line 564
    invoke-virtual {p0, v1}, Lorg/abtollc/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    const-string v1, "stun_server"

    const-string v4, "stun.counterpath.com"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_1
    const/16 v1, 0xf

    if-ge p1, v1, :cond_2

    .line 570
    const-string v1, "enable_stun"

    invoke-virtual {p0, v1, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 573
    :cond_2
    const/16 v1, 0x171

    if-ge p1, v1, :cond_3

    .line 575
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 576
    const-string v1, "use_soft_volume"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 581
    :cond_3
    const/16 v1, 0x181

    if-ge p1, v1, :cond_4

    .line 582
    const-string v1, "use_routing_api"

    .line 583
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 582
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 584
    const-string v1, "use_mode_api"

    .line 585
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 586
    const-string v1, "sip_audio_mode"

    .line 587
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_4
    const/16 v1, 0x23f

    if-ge p1, v1, :cond_7

    .line 590
    const-string v1, "set_audio_generate_tone"

    .line 591
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    .line 590
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 593
    if-lez p1, :cond_5

    .line 594
    const-string v1, "has_already_setup_service"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 597
    :cond_5
    const-string v1, "enable_qos"

    invoke-virtual {p0, v1, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 599
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "htc_supersonic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 600
    const-string v1, "snd_mic_level"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 601
    const-string v1, "snd_speaker_level"

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 602
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 603
    const-string v1, "use_routing_api"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 606
    :cond_6
    const-string v1, "keep_awake_incall"

    .line 607
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 606
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 609
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "SPH-M900"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    const-string v1, "invert_proximity_sensor"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 617
    :cond_7
    const/16 v1, 0x24f

    if-ge p1, v1, :cond_8

    .line 618
    invoke-static {p0}, Lorg/abtollc/utils/Compatibility;->resetCodecsSettings(Lorg/abtollc/utils/PreferencesWrapper;)V

    .line 620
    :cond_8
    const/16 v1, 0x254

    if-ge p1, v1, :cond_9

    .line 621
    const-string v1, "use_mode_api"

    .line 622
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 624
    :cond_9
    const/16 v1, 0x265

    if-ge p1, v1, :cond_a

    .line 625
    invoke-static {p0}, Lorg/abtollc/utils/Compatibility;->resetCodecsSettings(Lorg/abtollc/utils/PreferencesWrapper;)V

    .line 627
    :cond_a
    const/16 v1, 0x2c0

    if-ge p1, v1, :cond_b

    .line 628
    const-string v1, "use_sgs_call_hack"

    .line 629
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needSGSWorkaround()Z

    move-result v4

    .line 628
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 631
    :cond_b
    const/16 v1, 0x31a

    if-ge p1, v1, :cond_c

    .line 632
    const-string v1, "micro_source"

    .line 633
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "snd_clock_rate"

    .line 635
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v1, "keep_awake_incall"

    .line 637
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 636
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 639
    :cond_c
    const/16 v1, 0x32e

    if-ge p1, v1, :cond_d

    .line 642
    const-string v1, "network_tcp_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "network_udp_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v1, "network_tls_transport_port"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_d
    const/16 v1, 0x372

    if-ge p1, v1, :cond_e

    .line 648
    const-string v1, "G7221/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v1, "G7221/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_e
    const/16 v1, 0x38a

    if-ge p1, v1, :cond_f

    .line 652
    const-string v4, "prevent_screen_rotation"

    .line 653
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    move v1, v2

    .line 652
    :goto_0
    invoke-virtual {p0, v4, v1}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 655
    :cond_f
    const/16 v1, 0x38f

    if-ge p1, v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-I9100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 656
    const-string v1, "micro_source"

    .line 657
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultMicroSource()Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "sip_audio_mode"

    .line 659
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->guessInCallMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_10
    const/16 v1, 0x393

    if-ge p1, v1, :cond_11

    .line 663
    const-string v1, "keep_awake_incall"

    .line 664
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v4

    .line 663
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 666
    :cond_11
    const/16 v1, 0x3ab

    if-ge p1, v1, :cond_12

    .line 667
    const-string v1, "do_focus_audio"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 669
    :cond_12
    const/16 v1, 0x3bb

    if-ge p1, v1, :cond_13

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "droid2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 670
    const-string v1, "use_webrtc_hack"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 672
    :cond_13
    const/16 v1, 0x3e5

    if-ge p1, v1, :cond_14

    .line 674
    const-string v1, "echo_cancellation"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 675
    const-string v1, "echo_mode"

    const-string v4, "3"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v1, "ISAC/16000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "ISAC/32000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "ISAC/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "ISAC/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "AMR/8000/1"

    const-string v4, "wb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "AMR/8000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v1, "G7221/16000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v1, "G7221/32000/1"

    const-string v4, "nb"

    const-string v5, "0"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_14
    const/16 v1, 0x3ee

    if-ge p1, v1, :cond_15

    .line 692
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "U8100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 693
    const-string v1, "use_mode_api"

    .line 694
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 693
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 697
    :cond_15
    const/16 v1, 0x409

    if-ge p1, v1, :cond_16

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "thunder"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 698
    const-string v1, "use_mode_api"

    .line 699
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 701
    :cond_16
    const/16 v1, 0x434

    if-ge p1, v1, :cond_17

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-P1010"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 702
    const-string v1, "snd_clock_rate"

    .line 703
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultFrequency()Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_17
    const/16 v1, 0x455

    if-ge p1, v1, :cond_18

    .line 706
    const-string v1, "timer_min_se"

    const-string v4, "90"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v1, "timer_sess_expires"

    const-string v4, "1800"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {p0}, Lorg/abtollc/utils/Compatibility;->resetCodecsSettings(Lorg/abtollc/utils/PreferencesWrapper;)V

    .line 710
    :cond_18
    const/16 v1, 0x476

    if-ge p1, v1, :cond_19

    .line 711
    const-string v1, "use_alternate_unlocker"

    .line 712
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/abtollc/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v4

    .line 711
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 714
    :cond_19
    const/16 v1, 0x5eb

    if-ge p1, v1, :cond_1a

    .line 715
    const-string v1, "opus/48000/1"

    const-string v4, "wb"

    const-string v5, "240"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v1, "opus/48000/1"

    const-string v4, "nb"

    const-string v5, "240"

    invoke-virtual {p0, v1, v4, v5}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_1a
    const/16 v1, 0x62d

    if-ge p1, v1, :cond_1b

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 719
    const-string v1, "use_webrtc_hack"

    .line 720
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needWebRTCImplementation()Z

    move-result v4

    .line 719
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 722
    :cond_1b
    const/16 v1, 0x662

    if-ge p1, v1, :cond_1c

    .line 723
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gt-i9003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 724
    const-string v1, "set_audio_generate_tone"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needToneWorkaround()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 727
    :cond_1c
    const/16 v1, 0x675

    if-ge p1, v1, :cond_1d

    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/utils/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 728
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 730
    :cond_1d
    const/16 v1, 0x698

    if-ge p1, v1, :cond_1e

    .line 731
    const-string v1, "thread_count"

    const-string v4, "0"

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_1e
    const/16 v1, 0x6c1

    if-ge p1, v1, :cond_20

    .line 734
    const-string v1, "audio_implementation"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GT-S"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "U8655"

    .line 737
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "joe"

    .line 738
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 739
    :cond_1f
    const-string v1, "use_mode_api"

    .line 740
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v4

    .line 739
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 741
    const-string v1, "use_routing_api"

    .line 742
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseRoutingApi()Z

    move-result v4

    .line 741
    invoke-virtual {p0, v1, v4}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 745
    :cond_20
    const/16 v1, 0x6d8

    if-ge p1, v1, :cond_21

    .line 746
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->shouldUsePriviledgedIntegration(Landroid/content/Context;)Z

    move-result v0

    .line 747
    .local v0, "usePriv":Z
    if-eqz v0, :cond_21

    .line 748
    const-string v1, "integrate_tel_privileged"

    invoke-virtual {p0, v1, v0}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 749
    const-string v1, "integrate_with_native_dialer"

    if-nez v0, :cond_2e

    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 752
    .end local v0    # "usePriv":Z
    :cond_21
    const/16 v1, 0x6f1

    if-ge p1, v1, :cond_22

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "one_touch_990"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 753
    const-string v1, "keep_awake_incall"

    .line 754
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->needPspWorkaround()Z

    move-result v2

    .line 753
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 757
    :cond_22
    const/16 v1, 0x706

    if-ge p1, v1, :cond_23

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 758
    const-string v1, "audio_implementation"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_23
    const/16 v1, 0x72a

    if-ge p1, v1, :cond_24

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldFocusAudio()Z

    move-result v1

    if-nez v1, :cond_24

    .line 761
    const-string v1, "do_focus_audio"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldFocusAudio()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 763
    :cond_24
    const/16 v1, 0x78b

    if-ge p1, v1, :cond_25

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "ST25i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 764
    const-string v1, "audio_implementation"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getDefaultAudioImplementation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_25
    const/16 v1, 0x797

    if-ge p1, v1, :cond_27

    .line 767
    const-string v1, "setup_audio_before_init"

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldSetupAudioBeforeInit()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 768
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 769
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 770
    :cond_26
    const-string v1, "use_mode_api"

    .line 771
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v2

    .line 770
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 774
    :cond_27
    const/16 v1, 0x7da

    if-ge p1, v1, :cond_28

    .line 775
    const-string v1, "dtmf_press_tone_mode"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_28
    const/16 v1, 0x7df

    if-ge p1, v1, :cond_29

    .line 779
    const-string v1, "opus/48000/1"

    const-string v2, "nb"

    const-string v3, "0"

    invoke-virtual {p0, v1, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v1, "opus/48000/1"

    const-string v2, "wb"

    const-string v3, "0"

    invoke-virtual {p0, v1, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_29
    const/16 v1, 0x7ee

    if-ge p1, v1, :cond_2c

    .line 783
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG-E720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 784
    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_2a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "XT320"

    .line 785
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 786
    :cond_2b
    const-string v1, "use_mode_api"

    .line 787
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->shouldUseModeApi()Z

    move-result v2

    .line 786
    invoke-virtual {p0, v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 791
    :cond_2c
    invoke-virtual {p0}, Lorg/abtollc/utils/PreferencesWrapper;->endEditing()V

    .line 792
    return-void

    :cond_2d
    move v1, v3

    .line 653
    goto/16 :goto_0

    .restart local v0    # "usePriv":Z
    :cond_2e
    move v2, v3

    .line 749
    goto/16 :goto_1
.end method

.method public static useFlipAnimation()Z
    .locals 2

    .prologue
    .line 501
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "g7a"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
