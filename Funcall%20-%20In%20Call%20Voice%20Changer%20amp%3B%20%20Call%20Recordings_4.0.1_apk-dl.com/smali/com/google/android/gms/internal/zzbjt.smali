.class public final Lcom/google/android/gms/internal/zzbjt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:I

.field private zzaLf:Ljava/lang/String;

.field private zzaLo:Lcom/google/android/gms/internal/zzbiw;

.field public zzaLp:Lcom/google/android/gms/internal/zzbjl;

.field public final zzaLq:Lcom/google/android/gms/awareness/fence/zza;

.field private zzaLr:Landroid/app/PendingIntent;

.field private zzaLs:J

.field private zzaLt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzbiw;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjt;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLo:Lcom/google/android/gms/internal/zzbiw;

    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLp:Lcom/google/android/gms/internal/zzbjl;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLq:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLr:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLf:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLs:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLt:J

    return-void

    :cond_0
    if-nez p3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener"

    invoke-interface {p3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzbjl;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/zzbjl;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbjn;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbjn;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjt;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLo:Lcom/google/android/gms/internal/zzbiw;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLp:Lcom/google/android/gms/internal/zzbjl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLq:Lcom/google/android/gms/awareness/fence/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLr:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLf:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLs:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLt:J

    return-void
.end method

.method public static final zza(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzbjt;
    .locals 10

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    const/4 v1, 0x4

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzbjt;-><init>(ILcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static final zza(Ljava/lang/String;JLcom/google/android/gms/internal/zzbiy;Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzbjt;
    .locals 10

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/gms/internal/zzbiw;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p0, v4, v5, p3}, Lcom/google/android/gms/internal/zzbiw;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/zzbiy;)V

    move-object v4, p4

    move-object v5, v3

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzbjt;-><init>(ILcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static final zzcN(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbjt;
    .locals 10

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbjt;

    const/4 v1, 0x5

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzbjt;-><init>(ILcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/awareness/fence/zza;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbjt;->type:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLo:Lcom/google/android/gms/internal/zzbiw;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLp:Lcom/google/android/gms/internal/zzbjl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLr:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLf:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLs:J

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLt:J

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjt;->zzaLp:Lcom/google/android/gms/internal/zzbjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbjl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
