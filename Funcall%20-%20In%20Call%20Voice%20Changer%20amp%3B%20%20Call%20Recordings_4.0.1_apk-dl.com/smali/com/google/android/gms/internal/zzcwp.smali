.class final Lcom/google/android/gms/internal/zzcwp;
.super Lcom/google/android/gms/tagmanager/zzcl;


# instance fields
.field final synthetic zzbJp:Lcom/google/android/gms/internal/zzcwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcl;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+gtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zzf(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcwq;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzcwq;-><init>(Lcom/google/android/gms/internal/zzcwp;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
