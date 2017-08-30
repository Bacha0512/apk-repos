.class final Lcom/google/android/gms/internal/zzauy;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic zzasK:Lcom/google/android/gms/internal/zzaux;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaux;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauy;->zzasK:Lcom/google/android/gms/internal/zzaux;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauy;->zzasK:Lcom/google/android/gms/internal/zzaux;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaux;->zzasJ:Lcom/google/android/gms/internal/zzauw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauw;->zza(Lcom/google/android/gms/internal/zzauw;)V

    return-void
.end method
