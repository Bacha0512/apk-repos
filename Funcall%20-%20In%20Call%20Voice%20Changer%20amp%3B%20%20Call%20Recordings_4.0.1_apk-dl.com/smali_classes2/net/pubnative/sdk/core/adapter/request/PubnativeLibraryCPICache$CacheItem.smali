.class public Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheItem"
.end annotation


# instance fields
.field public ad:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

.field final synthetic this$0:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

.field public timestamp:J


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 2

    .prologue
    .line 58
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->this$0:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->ad:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->timestamp:J

    .line 59
    iput-object p2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->ad:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->timestamp:J

    .line 61
    return-void
.end method
