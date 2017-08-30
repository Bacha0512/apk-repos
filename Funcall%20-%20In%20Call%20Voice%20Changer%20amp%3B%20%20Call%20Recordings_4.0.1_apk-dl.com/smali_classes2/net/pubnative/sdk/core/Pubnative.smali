.class public Lnet/pubnative/sdk/core/Pubnative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/pubnative/sdk/core/Pubnative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/Pubnative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    sget-object v0, Lnet/pubnative/sdk/core/Pubnative;->TAG:Ljava/lang/String;

    const-string v1, "init - warning: invalid context"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lnet/pubnative/sdk/core/Pubnative;->TAG:Ljava/lang/String;

    const-string v1, "init - warning: invalid apptoken"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lnet/pubnative/sdk/core/Pubnative$1;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/Pubnative$1;-><init>()V

    invoke-static {p0, p1, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getConfig(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V

    goto :goto_0
.end method

.method public static setCoppaMode(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    .line 52
    return-void
.end method

.method public static setTargeting(Lnet/pubnative/sdk/core/request/PNAdTargetingModel;)V
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    .line 62
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    .prologue
    .line 70
    sput-boolean p0, Lnet/pubnative/sdk/core/PNSettings;->isTestModeEnabled:Z

    .line 71
    return-void
.end method
