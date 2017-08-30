.class public abstract Lcom/google/android/gms/internal/zzbot;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# direct methods
.method public static zzK(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbos;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.drive.internal.IEventReleaseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbos;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbos;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbou;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbou;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbot;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbot;->zzq(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
