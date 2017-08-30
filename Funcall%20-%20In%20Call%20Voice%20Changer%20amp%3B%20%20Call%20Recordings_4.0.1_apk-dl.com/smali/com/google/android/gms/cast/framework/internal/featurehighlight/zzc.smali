.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic zzatd:Landroid/view/View;

.field private synthetic zzate:Z

.field private synthetic zzatf:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzatd:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzate:Z

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzatf:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzatd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzatd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zzatf:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->zznL()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
