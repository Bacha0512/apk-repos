.class public final Lcom/google/android/gms/internal/zzboc;
.super Lcom/google/android/gms/internal/zzbor;


# instance fields
.field private final zzaJo:I

.field private final zzaOH:Lcom/google/android/gms/drive/events/zzi;

.field private final zzaOI:Lcom/google/android/gms/internal/zzboe;

.field private final zzaOJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOJ:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaJo:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboc;->zzaOH:Lcom/google/android/gms/drive/events/zzi;

    new-instance v0, Lcom/google/android/gms/internal/zzboe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzboe;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzbod;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOI:Lcom/google/android/gms/internal/zzboe;

    return-void
.end method


# virtual methods
.method public final zzaN(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOJ:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzaO(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOJ:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzbph;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zztj()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaJo:I

    invoke-interface {v2}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOJ:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboc;->zzaOI:Lcom/google/android/gms/internal/zzboe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboc;->zzaOH:Lcom/google/android/gms/drive/events/zzi;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/zzboe;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzboe;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
