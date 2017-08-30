.class public abstract Lcom/google/android/gms/tagmanager/zzco;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/tagmanager/zzco;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzco;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzco;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    move v0, v6

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzco;->zzBh()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzco;->zza(Lcom/google/android/gms/tagmanager/zzck;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_1
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementInterceptor"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/tagmanager/zzck;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/tagmanager/zzck;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzco;->zza(Lcom/google/android/gms/tagmanager/zzch;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_3
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementEventListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/tagmanager/zzch;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/google/android/gms/tagmanager/zzch;

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/zzcj;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method
