.class final Lcom/google/android/gms/internal/zzaxi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzayt;


# instance fields
.field private synthetic zzaxj:Lcom/google/android/gms/internal/zzawy;

.field private synthetic zzaxm:Lcom/google/android/gms/internal/zzaxh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxh;Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxj:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 8

    if-nez p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    new-instance v1, Lcom/google/android/gms/internal/zzaxj;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaxj;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzaxm;

    iget-object v0, p4, Lcom/google/android/gms/internal/zzaxm;->zzawU:Lcom/google/android/gms/internal/zzaxl;

    if-eqz v0, :cond_1

    const-string v1, "1.0.0"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxl;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaye;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaxh;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzawy;->zza(Lcom/google/android/gms/internal/zzawy;Lcom/google/android/gms/internal/zzaxl;)Lcom/google/android/gms/internal/zzaxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x866

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxl;->getVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string v7, "1.0.0"

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaxh;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaxh;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxh;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    new-instance v1, Lcom/google/android/gms/internal/zzaxj;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzaxm;->zzaxv:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaxh;->zza(Lcom/google/android/gms/internal/zzaxh;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaxj;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxh;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final zzx(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxi;->zzaxm:Lcom/google/android/gms/internal/zzaxh;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x837

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxh;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
