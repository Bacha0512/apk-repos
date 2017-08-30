.class final Lcom/google/android/gms/internal/hm;
.super Lcom/google/android/gms/internal/hp;


# instance fields
.field private synthetic zzbUr:Lcom/google/android/gms/internal/hl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hp;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object v1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->zzb(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->zza(Lcom/google/android/gms/internal/hl;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->zza(Lcom/google/android/gms/internal/hl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
