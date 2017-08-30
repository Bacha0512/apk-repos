.class public Lnet/pubnative/sdk/core/PNSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/PNSettings$Listener;
    }
.end annotation


# static fields
.field public static advertisingId:Ljava/lang/String;

.field public static appBundleID:Ljava/lang/String;

.field public static appVersion:Ljava/lang/String;

.field public static deviceName:Ljava/lang/String;

.field public static isCoppaModeEnabled:Z

.field public static isTestModeEnabled:Z

.field public static locale:Ljava/lang/String;

.field public static location:Landroid/location/Location;

.field public static os:Ljava/lang/String;

.field public static osVersion:Ljava/lang/String;

.field public static sdkVersion:Ljava/lang/String;

.field public static targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lnet/pubnative/sdk/core/PNSettings$Listener;)V
    .locals 2

    .prologue
    .line 38
    const-string v0, "android"

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->os:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->deviceName:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->osVersion:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->locale:Ljava/lang/String;

    .line 42
    const-string v0, "2.0.2 (34)"

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->sdkVersion:Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lnet/pubnative/sdk/core/PNSettings;->appBundleID:Ljava/lang/String;

    .line 46
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->appVersion:Ljava/lang/String;

    .line 49
    :cond_0
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p1}, Lnet/pubnative/sdk/core/PNSettings$Listener;->onInitFinish()V

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {p0}, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/PNSettings;->location:Landroid/location/Location;

    .line 56
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;-><init>()V

    .line 57
    new-instance v1, Lnet/pubnative/sdk/core/PNSettings$1;

    invoke-direct {v1, p1}, Lnet/pubnative/sdk/core/PNSettings$1;-><init>(Lnet/pubnative/sdk/core/PNSettings$Listener;)V

    invoke-virtual {v0, p0, v1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->request(Landroid/content/Context;Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;)V

    goto :goto_0
.end method

.method protected static invokeFinish(Ljava/lang/String;Lnet/pubnative/sdk/core/PNSettings$Listener;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Lnet/pubnative/sdk/core/PNSettings$Listener;->onInitFinish()V

    .line 71
    :cond_0
    return-void
.end method
