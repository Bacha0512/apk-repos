.class public Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/utils/PNAdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdInfo"
.end annotation


# instance fields
.field private final mAdvertisingId:Ljava/lang/String;

.field private final mLimitAdTrackingEnabled:Z

.field final synthetic this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->mAdvertisingId:Ljava/lang/String;

    .line 122
    iput-boolean p3, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->mLimitAdTrackingEnabled:Z

    .line 123
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->mLimitAdTrackingEnabled:Z

    return v0
.end method
