.class public final Lcom/google/android/gms/internal/uo;
.super Ljava/lang/Object;


# static fields
.field private static final zzcgk:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            "Lcom/google/android/gms/internal/un;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzcgl:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            "Lcom/google/android/gms/internal/un;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzcgm:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Lcom/google/android/gms/internal/un;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgn:Lcom/google/android/gms/internal/uz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Lcom/google/android/gms/internal/un;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbZE:Lcom/google/android/gms/internal/wl;

.field private final zzcfX:Lcom/google/android/gms/internal/ui;

.field private zzcgo:Lcom/google/android/gms/internal/uv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uv",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            "Lcom/google/android/gms/internal/un;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzcgp:Lcom/google/android/gms/internal/ys;

.field private zzcgq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/up;

    invoke-direct {v0}, Lcom/google/android/gms/internal/up;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uo;->zzcgk:Lcom/google/android/gms/internal/uz;

    new-instance v0, Lcom/google/android/gms/internal/uq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/uq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uo;->zzcgl:Lcom/google/android/gms/internal/uz;

    new-instance v0, Lcom/google/android/gms/internal/ur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ur;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uo;->zzcgm:Lcom/google/android/gms/internal/uz;

    new-instance v0, Lcom/google/android/gms/internal/us;

    invoke-direct {v0}, Lcom/google/android/gms/internal/us;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/uo;->zzcgn:Lcom/google/android/gms/internal/uz;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ui;Lcom/google/android/gms/internal/wl;Lcom/google/android/gms/internal/ys;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    iput-object p1, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    iput-object p2, p0, Lcom/google/android/gms/internal/uo;->zzbZE:Lcom/google/android/gms/internal/wl;

    iput-object p3, p0, Lcom/google/android/gms/internal/uo;->zzcgp:Lcom/google/android/gms/internal/ys;

    new-instance v0, Lcom/google/android/gms/internal/uv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/uv;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ui;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    iget-object v1, p0, Lcom/google/android/gms/internal/uo;->zzcgp:Lcom/google/android/gms/internal/ys;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ys;->zzJF()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ui;->zzan(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ui;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ui;->endTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ui;->zzFu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-wide v2, v0, Lcom/google/android/gms/internal/un;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zzb(Lcom/google/android/gms/internal/un;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ui;->endTransaction()V

    throw v0

    :cond_0
    return-void
.end method

.method private final zzD(Lcom/google/android/gms/internal/qr;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uo;->zzcgk:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uz;)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzE(Lcom/google/android/gms/internal/qr;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-object v3, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/un;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic zzHQ()Lcom/google/android/gms/internal/uz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/uo;->zzcgm:Lcom/google/android/gms/internal/uz;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/uz;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uz",
            "<",
            "Lcom/google/android/gms/internal/un;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/un;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/uz;->zzaj(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final zza(Lcom/google/android/gms/internal/un;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/uo;->zzb(Lcom/google/android/gms/internal/un;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ui;->zza(Lcom/google/android/gms/internal/un;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/uo;Lcom/google/android/gms/internal/un;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/un;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/un;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    iget-object v3, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    iget-object v4, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;)Lcom/google/android/gms/internal/uv;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    move-object v3, v0

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/internal/un;->id:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/un;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zd;->zzaF(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method private final zzb(Lcom/google/android/gms/internal/vt;Z)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/internal/uo;->zzj(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/uo;->zzk(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/un;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgp:Lcom/google/android/gms/internal/ys;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ys;->zzJF()J

    move-result-wide v4

    if-eqz v7, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/un;

    iget-wide v1, v7, Lcom/google/android/gms/internal/un;->id:J

    iget-object v3, v7, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    iget-boolean v6, v7, Lcom/google/android/gms/internal/un;->complete:Z

    iget-boolean v7, v7, Lcom/google/android/gms/internal/un;->zzbpf:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/un;-><init>(JLcom/google/android/gms/internal/vt;JZZ)V

    new-instance v8, Lcom/google/android/gms/internal/un;

    iget-wide v1, v0, Lcom/google/android/gms/internal/un;->id:J

    iget-object v3, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    iget-wide v4, v0, Lcom/google/android/gms/internal/un;->zzcgj:J

    iget-boolean v6, v0, Lcom/google/android/gms/internal/un;->complete:Z

    move-object v0, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/un;-><init>(JLcom/google/android/gms/internal/vt;JZZ)V

    move-object v0, v8

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/un;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/un;

    iget-wide v1, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/un;-><init>(JLcom/google/android/gms/internal/vt;JZZ)V

    goto :goto_0
.end method

.method private static zzj(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/qr;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qr;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/wp;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/uo;->zzE(Lcom/google/android/gms/internal/qr;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ui;->zze(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wp;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/uo;->zzcgk:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/uz;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final zzB(Lcom/google/android/gms/internal/qr;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/uo;->zzD(Lcom/google/android/gms/internal/qr;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/uo;->zzk(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/un;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/un;

    iget-wide v1, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/uo;->zzcgq:J

    iget-object v4, p0, Lcom/google/android/gms/internal/uo;->zzcgp:Lcom/google/android/gms/internal/ys;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ys;->zzJF()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/un;-><init>(JLcom/google/android/gms/internal/vt;JZZ)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/un;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/un;->zzHO()Lcom/google/android/gms/internal/un;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzC(Lcom/google/android/gms/internal/qr;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    sget-object v1, Lcom/google/android/gms/internal/uo;->zzcgl:Lcom/google/android/gms/internal/uz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uz;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzHP()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/uo;->zzcgm:Lcom/google/android/gms/internal/uz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/uz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/uc;)Lcom/google/android/gms/internal/uj;
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/uo;->zzcgm:Lcom/google/android/gms/internal/uz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/uz;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1}, Lcom/google/android/gms/internal/uc;->zzHK()F

    move-result v5

    sub-float/2addr v2, v5

    long-to-float v5, v0

    mul-float/2addr v2, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/uc;->zzHL()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v6, v0, v6

    new-instance v1, Lcom/google/android/gms/internal/uj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/uj;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Count to prune: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v12, v5}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/uu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/uu;-><init>(Lcom/google/android/gms/internal/uo;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    :goto_0
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-object v5, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/uj;->zzx(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uj;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-static {v0}, Lcom/google/android/gms/internal/uo;->zzj(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/uo;->zzk(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/un;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/gms/internal/uo;->zzcfX:Lcom/google/android/gms/internal/ui;

    iget-wide v10, v0, Lcom/google/android/gms/internal/un;->id:J

    invoke-interface {v8, v10, v11}, Lcom/google/android/gms/internal/ui;->zzam(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/uv;->zzI(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    long-to-int v0, v6

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-object v0, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uj;->zzy(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uj;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/uo;->zzcgn:Lcom/google/android/gms/internal/uz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/uz;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/uo;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/uo;->zzbZE:Lcom/google/android/gms/internal/wl;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unprunable queries: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v12, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-object v0, v0, Lcom/google/android/gms/internal/un;->zzcgi:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uj;->zzy(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uj;

    move-result-object v2

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method public final zzg(Lcom/google/android/gms/internal/vt;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/uo;->zzb(Lcom/google/android/gms/internal/vt;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/vt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/uo;->zzb(Lcom/google/android/gms/internal/vt;Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/un;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/uo;->zzj(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzl(Lcom/google/android/gms/internal/vt;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/uo;->zzj(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/uo;->zzk(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/un;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/un;->complete:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/un;->zzHO()Lcom/google/android/gms/internal/un;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zza(Lcom/google/android/gms/internal/un;)V

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/vt;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/uo;->zzD(Lcom/google/android/gms/internal/qr;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/un;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/un;->complete:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final zzz(Lcom/google/android/gms/internal/qr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uo;->zzcgo:Lcom/google/android/gms/internal/uv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ut;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ut;-><init>(Lcom/google/android/gms/internal/uo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/uy;)V

    return-void
.end method
