.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private synthetic zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field private synthetic zzatg:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatg:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatg:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatg:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zznN()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zzatc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
