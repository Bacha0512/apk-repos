.class public final Lcom/google/android/gms/internal/zzcuf;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mState:I

.field private final zzbDw:Ljava/lang/String;

.field private zzbGa:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbHH:Ljava/lang/String;

.field private final zzbHI:Ljava/lang/String;

.field private final zzbHJ:Lcom/google/android/gms/internal/zzcvz;

.field private final zzbHK:Lcom/google/android/gms/internal/cd;

.field private final zzbHL:Ljava/util/concurrent/ExecutorService;

.field private final zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHO:Lcom/google/android/gms/internal/zzcuo;

.field private zzbHP:Lcom/google/android/gms/internal/zzcvu;

.field private zzbHQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcut;",
            ">;"
        }
    .end annotation
.end field

.field private zzbHR:Z

.field private final zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/cd;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzcuo;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcuf;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHR:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuf;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbDw:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcvz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHJ:Lcom/google/android/gms/internal/zzcvz;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHK:Lcom/google/android/gms/internal/cd;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHL:Ljava/util/concurrent/ExecutorService;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcuo;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHI:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzcut;

    const-string v1, "gtm.load"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gtm"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcut;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzcn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbDw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is scheduled for loading."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcuj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzcuj;-><init>(Lcom/google/android/gms/internal/zzcuf;Lcom/google/android/gms/internal/zzcug;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcuf;->mState:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzcuf;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;Lcom/google/android/gms/internal/zzcvu;)Lcom/google/android/gms/internal/zzcvu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHP:Lcom/google/android/gms/internal/zzcvu;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcuf;->zzaj(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHR:Z

    return p1
.end method

.method private final zzaj(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbDw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Refresh container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcuh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcuh;-><init>(Lcom/google/android/gms/internal/zzcuf;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHP:Lcom/google/android/gms/internal/zzcvu;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcuf;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHL:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcuf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbDw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcuf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzcuf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcuo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/cd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHK:Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzcuf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzcuf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzcuf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHR:Z

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHJ:Lcom/google/android/gms/internal/zzcvz;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzvw:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method


# virtual methods
.method public final dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcug;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcug;-><init>(Lcom/google/android/gms/internal/zzcuf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcut;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcuk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcuk;-><init>(Lcom/google/android/gms/internal/zzcuf;Lcom/google/android/gms/internal/zzcut;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
