.class final Lcom/google/android/gms/cast/framework/media/uicontroller/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic zzavl:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->zzavl:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->zzavl:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawv;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzawv;->zzy(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->zzavl:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzawv;->zzY(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->zzavl:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawv;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzawv;->zzY(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
