.class public final Lcom/google/android/gms/internal/zzcur;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcux;


# static fields
.field private static final zzbDk:Ljava/lang/Object;

.field private static zzbHY:Lcom/google/android/gms/internal/zzcur;

.field private static final zzbIb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbHZ:Lcom/google/android/gms/internal/zzcvt;

.field private zzbIa:Lcom/google/android/gms/internal/zzcuy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcur;->zzbDk:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "PUT"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcur;->zzbIb:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcuz;->zzbw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcuz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcwb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcwb;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzcur;-><init>(Lcom/google/android/gms/internal/zzcuy;Lcom/google/android/gms/internal/zzcvt;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcuy;Lcom/google/android/gms/internal/zzcvt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcur;->zzbIa:Lcom/google/android/gms/internal/zzcuy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcur;->zzbHZ:Lcom/google/android/gms/internal/zzcvt;

    return-void
.end method

.method public static zzbv(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcux;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzcur;->zzbDk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcur;->zzbHY:Lcom/google/android/gms/internal/zzcur;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcur;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcur;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcur;->zzbHY:Lcom/google/android/gms/internal/zzcur;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzcur;->zzbHY:Lcom/google/android/gms/internal/zzcur;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final dispatch()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcwd;->zzCA()Lcom/google/android/gms/internal/zzcwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcwd;->dispatch()V

    return-void
.end method

.method public final zzW(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcur;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzcur;->zzbIb:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unsupport http method %s. Drop the hit."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcvs;->zzCw()Lcom/google/android/gms/internal/zzcvs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcvs;->isPreview()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcur;->zzbHZ:Lcom/google/android/gms/internal/zzcvt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcvt;->zzlL()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Too many hits sent too quickly (rate throttled)."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcur;->zzbIa:Lcom/google/android/gms/internal/zzcuy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcuy;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public final zzfh(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcur;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
