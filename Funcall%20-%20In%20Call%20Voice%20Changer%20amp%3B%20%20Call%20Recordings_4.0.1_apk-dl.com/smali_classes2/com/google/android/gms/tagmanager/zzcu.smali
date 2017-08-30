.class public abstract Lcom/google/android/gms/tagmanager/zzcu;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzct;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/tagmanager/zzcu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzct;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzct;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/tagmanager/zzct;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzcu;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-ne p1, v3, :cond_5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {p0, v4, v1, v2}, Lcom/google/android/gms/tagmanager/zzcu;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcvg;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/tagmanager/zzcn;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcn;

    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/zzcp;-><init>(Landroid/os/IBinder;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    invoke-interface {v5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/tagmanager/zzce;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/google/android/gms/tagmanager/zzce;

    move-object v2, v0

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v2, v5}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
