.class Lcom/google/android/gms/internal/abr$zza;
.super Lcom/google/android/gms/internal/zzbds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/abr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/abs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdt;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbds;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/abr$zza;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    const-string v1, "StorageOnStopCallback"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbds;)V

    return-void
.end method

.method public static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/abr$zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbdr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbdr;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/abr$zza;->zzb(Lcom/google/android/gms/internal/zzbdr;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object v1

    const-string v0, "StorageOnStopCallback"

    const-class v2, Lcom/google/android/gms/internal/abr$zza;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbds;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abr$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/abr$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abr$zza;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/abs;

    if-eqz v1, :cond_0

    const-string v4, "StorageOnStopCallback"

    const-string v5, "removing subscription from activity."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abs;->zzEf()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/google/android/gms/internal/abr;->zzLc()Lcom/google/android/gms/internal/abr;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abs;->zzLd()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/abr;->zzau(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/abs;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/abs;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abr$zza;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
