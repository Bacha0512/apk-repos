.class public final Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaLr:Landroid/app/PendingIntent;

.field private zzaku:I

.field private zzbyA:Z

.field private zzbyB:I

.field private zzbyW:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbye:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbyf:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

.field private zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzbzr:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

.field private zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field private zzbzx:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzy:[B

.field private zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZI)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaku:I

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez p4, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    iput p7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzx:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    iput-boolean p11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    if-nez p12, :cond_4

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    move-object/from16 v0, p14

    move/from16 v1, p13

    invoke-static {v0, p9, p8, v1}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyB:I

    return-void

    :cond_0
    const-string v2, "com.google.android.gms.nearby.messages.internal.IMessageListener"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/gms/nearby/messages/internal/zzm;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzo;

    invoke-direct {v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzo;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {p4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/android/gms/nearby/messages/internal/zzp;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v2, p4}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    if-nez p12, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "com.google.android.gms.nearby.messages.internal.ISubscribeCallback"

    move-object/from16 v0, p12

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/nearby/messages/internal/zzaa;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/google/android/gms/nearby/messages/internal/zzaa;

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzac;

    move-object/from16 v0, p12

    invoke-direct {v2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzac;-><init>(Landroid/os/IBinder;)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZI)V
    .locals 17

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;ZI)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    iget-object v8, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    iget-object v10, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x107

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "SubscribeRequest{messageListener="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ", strategy="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pendingIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscribeCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useRealClientApiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientAppContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDiscardPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zeroPartyPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realClientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIgnoreNearbyPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    array-length v0, v0

    const/16 v6, 0x13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "<"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " bytes>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaku:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzw:Lcom/google/android/gms/nearby/messages/MessageFilter;

    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzaLr:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x7

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzx:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbye:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyW:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzy:[B

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 v0, 0xb

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzr:Z

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyf:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {p1, v0, v1, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyA:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x10

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbyB:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzv:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;->zzbzz:Lcom/google/android/gms/nearby/messages/internal/zzaa;

    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzaa;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method
