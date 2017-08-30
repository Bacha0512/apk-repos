.class public final Lcom/google/android/gms/internal/zzcun;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzGM:Ljava/util/concurrent/ExecutorService;

.field private final zzbHK:Lcom/google/android/gms/internal/cd;

.field private final zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHV:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHW:Lcom/google/android/gms/tagmanager/zzce;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V
    .locals 7

    new-instance v4, Lcom/google/android/gms/internal/cd;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/cd;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxe$zza;->zzbx(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcxg;->zzCD()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcun;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/cd;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/cd;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzce;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->zzbHW:Lcom/google/android/gms/tagmanager/zzce;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->zzbHK:Lcom/google/android/gms/internal/cd;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->zzGM:Ljava/util/concurrent/ExecutorService;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcun;->zzbHV:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcuf;
    .locals 12
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v5, Lcom/google/android/gms/internal/zzcvz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcun;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcun;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcun;->zzbHW:Lcom/google/android/gms/tagmanager/zzce;

    invoke-direct {v5, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzcvz;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/zzcuo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcun;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0, p1}, Lcom/google/android/gms/internal/zzcuo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcun;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcun;->zzbHK:Lcom/google/android/gms/internal/cd;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcun;->zzGM:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzcun;->zzbHV:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzcun;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzcuf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/cd;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzcuo;)V

    return-object v0
.end method
