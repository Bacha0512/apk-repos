.class public final Lcom/google/android/gms/internal/abr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/abr$zza;
    }
.end annotation


# static fields
.field private static final zzcpV:Lcom/google/android/gms/internal/abr;


# instance fields
.field private final zzcpW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/abs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcpX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/abr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/abr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/abr;->zzcpV:Lcom/google/android/gms/internal/abr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abr;->zzcpW:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abr;->zzcpX:Ljava/lang/Object;

    return-void
.end method

.method public static zzLc()Lcom/google/android/gms/internal/abr;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/abr;->zzcpV:Lcom/google/android/gms/internal/abr;

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/abr;->zzcpX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/abs;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/abs;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/abr$zza;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/abr$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/abr$zza;->zza(Lcom/google/android/gms/internal/abs;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/abr;->zzcpW:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzau(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/abr;->zzcpX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abr;->zzcpW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/abs;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/abr$zza;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/abr$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/abr$zza;->zzb(Lcom/google/android/gms/internal/abs;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
