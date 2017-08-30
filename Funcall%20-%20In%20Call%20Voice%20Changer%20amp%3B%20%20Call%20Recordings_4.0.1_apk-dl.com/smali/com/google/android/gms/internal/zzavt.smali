.class final Lcom/google/android/gms/internal/zzavt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavq:Lcom/google/android/gms/internal/zzavs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavt;->zzavq:Lcom/google/android/gms/internal/zzavs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzavq:Lcom/google/android/gms/internal/zzavs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzavs;->zza(Lcom/google/android/gms/internal/zzavs;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavt;->zzavq:Lcom/google/android/gms/internal/zzavs;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzavs;->zzb(Lcom/google/android/gms/internal/zzavs;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->newInstance(Lcom/google/android/gms/cast/MediaInfo;[J)Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method
