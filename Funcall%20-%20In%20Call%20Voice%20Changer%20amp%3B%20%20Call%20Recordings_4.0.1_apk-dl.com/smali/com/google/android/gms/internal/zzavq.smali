.class final Lcom/google/android/gms/internal/zzavq;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# instance fields
.field private synthetic zzave:Lcom/google/android/gms/internal/zzavn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavq;->zzave:Lcom/google/android/gms/internal/zzavn;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavq;->zzave:Lcom/google/android/gms/internal/zzavn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzavn;->zza(Lcom/google/android/gms/internal/zzavn;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavq;->zzave:Lcom/google/android/gms/internal/zzavn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzavn;->zza(Lcom/google/android/gms/internal/zzavn;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method

.method public final onPlay()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavq;->zzave:Lcom/google/android/gms/internal/zzavn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzavn;->zza(Lcom/google/android/gms/internal/zzavn;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method
