.class public final Lcom/google/android/gms/fitness/request/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/fitness/request/zzan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzd(Landroid/os/Parcel;)I

    move-result v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v22, 0xffff

    and-int v22, v22, v2

    sparse-switch v22, :sswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v4, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    move-object v4, v2

    goto :goto_0

    :sswitch_1
    sget-object v5, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataType;

    move-object v5, v2

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzr(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v9

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v11

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :sswitch_8
    sget-object v13, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v13}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object v13, v2

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v16

    goto :goto_0

    :sswitch_b
    sget-object v17, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    goto :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v18

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzr(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v20

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzF(Landroid/os/Parcel;I)V

    new-instance v2, Lcom/google/android/gms/fitness/request/zzan;

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/fitness/request/zzan;-><init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;JLandroid/os/IBinder;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/fitness/request/zzan;

    return-object v0
.end method
