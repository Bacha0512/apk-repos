.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_STEP_TEN_SECONDS_IN_MS:J = 0x2710L

.field public static final SKIP_STEP_THIRTY_SECONDS_IN_MS:J = 0x7530L

.field private static final zzatN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzatO:[I


# instance fields
.field private final zzatP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatQ:[I

.field private final zzatR:J

.field private final zzatS:Ljava/lang/String;

.field private final zzatT:I

.field private final zzatU:I

.field private final zzatV:I

.field private final zzatW:I

.field private final zzatX:I

.field private final zzatY:I

.field private final zzatZ:I

.field private final zzaua:I

.field private final zzaub:I

.field private final zzauc:I

.field private final zzaud:I

.field private final zzaue:I

.field private final zzauf:I

.field private final zzaug:I

.field private final zzauh:I

.field private final zzaui:I

.field private final zzauj:I

.field private final zzauk:I

.field private final zzaul:I

.field private final zzaum:I

.field private final zzaun:I

.field private final zzauo:I

.field private final zzaup:I

.field private final zzauq:I

.field private final zzaur:I

.field private final zzaus:I

.field private final zzaut:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatN:Ljava/util/List;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatO:[I

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IJ",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIIIIIIIIIIIIIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatP:Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_1

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatQ:[I

    :goto_1
    iput-wide p3, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatR:J

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatS:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatT:I

    iput p7, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatU:I

    iput p8, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatV:I

    iput p9, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatW:I

    iput p10, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatX:I

    iput p11, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatY:I

    iput p12, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatZ:I

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaua:I

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaub:I

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauc:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaud:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaue:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauf:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaug:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauh:I

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaui:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauj:I

    move/from16 v0, p23

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauk:I

    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaul:I

    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaum:I

    move/from16 v0, p26

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaun:I

    move/from16 v0, p27

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauo:I

    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaup:I

    move/from16 v0, p29

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauq:I

    move/from16 v0, p30

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaur:I

    move/from16 v0, p31

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaus:I

    move/from16 v0, p32

    iput v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaut:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatP:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatQ:[I

    goto :goto_1
.end method

.method static synthetic zznV()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatN:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zznW()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatO:[I

    return-object v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatP:Ljava/util/List;

    return-object v0
.end method

.method public getCastingToDeviceStringResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauh:I

    return v0
.end method

.method public getCompatActionIndices()[I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatQ:[I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatQ:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauf:I

    return v0
.end method

.method public getForward10DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaua:I

    return v0
.end method

.method public getForward30DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaub:I

    return v0
.end method

.method public getForwardDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatZ:I

    return v0
.end method

.method public getPauseDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatV:I

    return v0
.end method

.method public getPlayDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatW:I

    return v0
.end method

.method public getRewind10DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaud:I

    return v0
.end method

.method public getRewind30DrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaue:I

    return v0
.end method

.method public getRewindDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauc:I

    return v0
.end method

.method public getSkipNextDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatX:I

    return v0
.end method

.method public getSkipPrevDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatY:I

    return v0
.end method

.method public getSkipStepMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatR:J

    return-wide v0
.end method

.method public getSmallIconDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatT:I

    return v0
.end method

.method public getStopLiveStreamDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatU:I

    return v0
.end method

.method public getStopLiveStreamTitleResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaui:I

    return v0
.end method

.method public getTargetActivityClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzatS:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x13

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaug:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x16

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauj:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x17

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauk:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x18

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaul:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x19

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaum:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1a

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaun:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1b

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauo:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1c

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaup:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1d

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzauq:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1e

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaur:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaus:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x20

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzaut:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
