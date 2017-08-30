.class public Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/utils/PNAdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field retrieved:Z

.field final synthetic this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;


# direct methods
.method protected constructor <init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;)V
    .locals 2

    .prologue
    .line 142
    iput-object p1, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->retrieved:Z

    .line 145
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->retrieved:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->retrieved:Z

    .line 162
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error: can\'t connect to AdvertisingId service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
