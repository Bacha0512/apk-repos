.class public Lnet/pubnative/api/core/utils/PNAPISystemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sWebViewUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->sWebViewUserAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 68
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 70
    new-instance v5, Lnet/pubnative/api/core/utils/PNAPISystemUtils$1;

    invoke-direct {v5}, Lnet/pubnative/api/core/utils/PNAPISystemUtils$1;-><init>()V

    .line 77
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 78
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 79
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 81
    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 86
    if-nez v6, :cond_0

    .line 87
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    move-object v0, v6

    .line 91
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public static getWebViewUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->sWebViewUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->sWebViewUserAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->sWebViewUserAgent:Ljava/lang/String;

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->TAG:Ljava/lang/String;

    const-string v1, "getWebViewUserAgent - Error: cannot inject user agent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
