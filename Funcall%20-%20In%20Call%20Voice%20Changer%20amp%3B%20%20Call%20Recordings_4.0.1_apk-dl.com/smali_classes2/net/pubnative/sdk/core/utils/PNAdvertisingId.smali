.class public Lnet/pubnative/sdk/core/utils/PNAdvertisingId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;,
        Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;,
        Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;,
        Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;,
        Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mListener:Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected invokeOnFinish(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->mListener:Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->mListener:Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;

    invoke-interface {v0, p1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;->onPubnativeAdvertisingIdFinish(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public request(Landroid/content/Context;Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;)V
    .locals 2

    .prologue
    .line 52
    iput-object p2, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->mListener:Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;

    .line 53
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;

    invoke-direct {v0, p0, p1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;-><init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method
