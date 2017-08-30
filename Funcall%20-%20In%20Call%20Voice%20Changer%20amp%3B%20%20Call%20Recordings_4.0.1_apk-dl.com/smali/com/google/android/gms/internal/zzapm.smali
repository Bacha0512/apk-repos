.class public final Lcom/google/android/gms/internal/zzapm;
.super Ljava/lang/Object;


# instance fields
.field private zzajE:Lcom/google/android/gms/internal/zzaoz;

.field private zzajF:J

.field private zzajG:I

.field private zzajH:Lcom/google/android/gms/internal/zzaow;

.field private zzajI:Z

.field private zzajJ:I

.field private zzajK:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzapm;->zzajF:J

    iput v2, p0, Lcom/google/android/gms/internal/zzapm;->zzajG:I

    iput v2, p0, Lcom/google/android/gms/internal/zzapm;->zzajJ:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzapm;->zzajI:Z

    iput v3, p0, Lcom/google/android/gms/internal/zzapm;->zzajK:I

    return-void
.end method


# virtual methods
.method public final zzM(Z)Lcom/google/android/gms/internal/zzapm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajI:Z

    return-object p0
.end method

.method public final zzS(I)Lcom/google/android/gms/internal/zzapm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajG:I

    return-object p0
.end method

.method public final zzT(I)Lcom/google/android/gms/internal/zzapm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajK:I

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaow;)Lcom/google/android/gms/internal/zzapm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajH:Lcom/google/android/gms/internal/zzaow;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaoz;)Lcom/google/android/gms/internal/zzapm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajE:Lcom/google/android/gms/internal/zzaoz;

    return-object p0
.end method

.method public final zzmm()Lcom/google/android/gms/internal/zzapl;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzapl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapm;->zzajE:Lcom/google/android/gms/internal/zzaoz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzapm;->zzajF:J

    iget v4, p0, Lcom/google/android/gms/internal/zzapm;->zzajG:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzapm;->zzajH:Lcom/google/android/gms/internal/zzaow;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzapm;->zzajI:Z

    iget v8, p0, Lcom/google/android/gms/internal/zzapm;->zzajJ:I

    iget v9, p0, Lcom/google/android/gms/internal/zzapm;->zzajK:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzapl;-><init>(Lcom/google/android/gms/internal/zzaoz;JILjava/lang/String;Lcom/google/android/gms/internal/zzaow;ZII)V

    return-object v0
.end method

.method public final zzv(J)Lcom/google/android/gms/internal/zzapm;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzapm;->zzajF:J

    return-object p0
.end method
