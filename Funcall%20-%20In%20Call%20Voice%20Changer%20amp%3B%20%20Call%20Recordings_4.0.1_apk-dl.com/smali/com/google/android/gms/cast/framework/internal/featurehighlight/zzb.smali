.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzd(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzb(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->dismiss()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
