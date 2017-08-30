.class public abstract Lcom/google/android/gms/internal/zzbvz;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.fitness.internal.IDataSourcesCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzbvz;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbvy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.internal.IDataSourcesCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbvy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbvy;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbwa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbwa;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbvz;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbvz;->zza(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
