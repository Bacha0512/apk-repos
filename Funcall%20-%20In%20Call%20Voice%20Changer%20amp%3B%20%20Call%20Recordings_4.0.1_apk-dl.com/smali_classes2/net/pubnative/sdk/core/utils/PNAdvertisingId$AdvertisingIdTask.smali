.class public Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/utils/PNAdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdvertisingIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field final synthetic this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p2, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 72
    .line 74
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    new-instance v2, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;

    iget-object v3, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {v2, v3}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;-><init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    iget-object v3, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v3, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;

    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;-><init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Landroid/os/IBinder;)V

    .line 82
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;

    iget-object v4, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-virtual {v3}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v3

    invoke-direct {v0, v4, v5, v3}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;-><init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    :try_start_2
    iget-object v3, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    :goto_1
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error: cannot get advertising id, limit ad tracking is enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_2
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_3
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdvertisingIdInfo - Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :try_start_4
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v0, v1

    .line 88
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 90
    :goto_3
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdvertisingIdInfo - Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 89
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingIdTask;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->invokeOnFinish(Ljava/lang/String;)V

    .line 108
    return-void
.end method
