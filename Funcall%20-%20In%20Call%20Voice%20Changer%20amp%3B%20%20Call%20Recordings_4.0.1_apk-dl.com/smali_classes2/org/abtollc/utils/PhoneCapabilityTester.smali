.class public final Lorg/abtollc/utils/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static callIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInitialized:Z

.field private static sIsPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPossibleActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const v2, 0x10040

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getPriviledgedIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 82
    .local v0, "b":Landroid/net/Uri$Builder;
    const-string v2, "tel"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    return-object v1
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 62
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 64
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lorg/abtollc/utils/PhoneCapabilityTester;->sIsPhone:Z

    .line 66
    const-string v1, "123"

    invoke-static {v1}, Lorg/abtollc/utils/PhoneCapabilityTester;->getPriviledgedIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/abtollc/utils/PhoneCapabilityTester;->getPossibleActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/abtollc/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    .line 67
    sput-boolean v2, Lorg/abtollc/utils/PhoneCapabilityTester;->sIsInitialized:Z

    .line 68
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 29
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-boolean v0, Lorg/abtollc/utils/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/abtollc/utils/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 58
    :cond_0
    sget-boolean v0, Lorg/abtollc/utils/PhoneCapabilityTester;->sIsPhone:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    .line 108
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lorg/abtollc/utils/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static final resolvePackageForPriviledgedCall(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-boolean v0, Lorg/abtollc/utils/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lorg/abtollc/utils/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 99
    :cond_0
    sget-object v0, Lorg/abtollc/utils/PhoneCapabilityTester;->callIntents:Ljava/util/List;

    return-object v0
.end method
