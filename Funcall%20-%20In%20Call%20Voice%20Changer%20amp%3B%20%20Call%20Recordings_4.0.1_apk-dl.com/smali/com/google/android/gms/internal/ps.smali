.class public final Lcom/google/android/gms/internal/ps;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private zzccm:J

.field private zzcco:D

.field private zzccp:D

.field private final zzccu:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzccv:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wm;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccm:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzcco:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccv:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccp:D

    iput-object p1, p0, Lcom/google/android/gms/internal/ps;->zzccu:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/wl;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/wl;-><init>(Lcom/google/android/gms/internal/wm;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ps;->zzbZE:Lcom/google/android/gms/internal/wl;

    return-void
.end method


# virtual methods
.method public final zzGC()Lcom/google/android/gms/internal/pq;
    .locals 13

    new-instance v1, Lcom/google/android/gms/internal/pq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ps;->zzccu:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/android/gms/internal/ps;->zzbZE:Lcom/google/android/gms/internal/wl;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ps;->zzccm:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ps;->zzccv:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ps;->zzccp:D

    iget-wide v10, p0, Lcom/google/android/gms/internal/ps;->zzcco:D

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/pq;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wl;JJDDLcom/google/android/gms/internal/pr;)V

    return-object v1
.end method

.method public final zzas(J)Lcom/google/android/gms/internal/ps;
    .locals 2

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccm:J

    return-object p0
.end method

.method public final zzat(J)Lcom/google/android/gms/internal/ps;
    .locals 2

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccv:J

    return-object p0
.end method

.method public final zzh(D)Lcom/google/android/gms/internal/ps;
    .locals 2

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzccp:D

    return-object p0
.end method

.method public final zzi(D)Lcom/google/android/gms/internal/ps;
    .locals 2

    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/google/android/gms/internal/ps;->zzcco:D

    return-object p0
.end method
