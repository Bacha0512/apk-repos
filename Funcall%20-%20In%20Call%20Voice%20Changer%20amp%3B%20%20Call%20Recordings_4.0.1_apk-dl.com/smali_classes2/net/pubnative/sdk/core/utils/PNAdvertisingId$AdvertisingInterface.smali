.class public Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/utils/PNAdvertisingId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdvertisingInterface"
.end annotation


# instance fields
.field private binder:Landroid/os/IBinder;

.field final synthetic this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/core/utils/PNAdvertisingId;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->this$0:Lnet/pubnative/sdk/core/utils/PNAdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 176
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 187
    const/4 v0, 0x0

    .line 189
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 191
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 192
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 199
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    :try_start_1
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error: Can\'t read AdvertisingId from the service"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isLimitAdTrackingEnabled(Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 208
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v2, p0, Lnet/pubnative/sdk/core/utils/PNAdvertisingId$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 212
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 219
    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 209
    goto :goto_0

    :cond_1
    move v0, v1

    .line 212
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_1
    # getter for: Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/utils/PNAdvertisingId;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Error: Can\'t get is limit Ad tracking enabled"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v0, v1

    .line 218
    goto :goto_2

    .line 216
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
