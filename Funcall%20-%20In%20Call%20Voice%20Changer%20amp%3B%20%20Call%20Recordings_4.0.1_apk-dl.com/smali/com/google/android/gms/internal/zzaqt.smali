.class final Lcom/google/android/gms/internal/zzaqt;
.super Lcom/google/android/gms/internal/zzaqu;


# instance fields
.field private synthetic zzakD:Lcom/google/android/gms/internal/zzaqs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqt;->zzakD:Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzN(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqt;->zzakD:Lcom/google/android/gms/internal/zzaqs;

    new-instance v2, Lcom/google/android/gms/internal/zzaqw;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaqw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaqs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaqn;->zzmq()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_0
.end method
