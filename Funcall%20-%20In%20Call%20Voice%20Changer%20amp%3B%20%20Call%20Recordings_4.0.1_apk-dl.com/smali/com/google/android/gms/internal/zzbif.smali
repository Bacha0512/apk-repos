.class public final Lcom/google/android/gms/internal/zzbif;
.super Lcom/google/android/gms/internal/zzed;

# interfaces
.implements Lcom/google/android/gms/internal/zzbie;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.config.internal.IConfigService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzed;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbic;Lcom/google/android/gms/internal/zzbhy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbif;->zzZ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbif;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
