.class public abstract Lcom/google/android/gms/tagmanager/zzcr;
.super Lcom/google/android/gms/internal/zzee;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/tagmanager/zzcr;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzcq;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzcq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcq;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzcr;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v5

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {p0, v2, v1, v5}, Lcom/google/android/gms/tagmanager/zzcr;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/tagmanager/zzcn;

    if-eqz v3, :cond_2

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

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/tagmanager/zzce;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/google/android/gms/tagmanager/zzce;

    move-object v5, v0

    goto :goto_2

    :cond_4
    new-instance v5, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v5, v3}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzcr;->preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_3

    :pswitch_2
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzM(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v4, v5

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcr;->previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V

    goto :goto_3

    :cond_5
    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v4, v0, Lcom/google/android/gms/tagmanager/zzcn;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcn;

    move-object v4, v0

    goto :goto_4

    :cond_6
    new-instance v4, Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {v4, v7}, Lcom/google/android/gms/tagmanager/zzcp;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :cond_7
    const-string v0, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/tagmanager/zzce;

    if-eqz v5, :cond_8

    check-cast v0, Lcom/google/android/gms/tagmanager/zzce;

    move-object v5, v0

    goto :goto_5

    :cond_8
    new-instance v5, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v5, v7}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
