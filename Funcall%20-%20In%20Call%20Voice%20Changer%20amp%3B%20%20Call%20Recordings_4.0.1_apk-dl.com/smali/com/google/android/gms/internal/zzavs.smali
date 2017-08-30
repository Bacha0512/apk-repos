.class public final Lcom/google/android/gms/internal/zzavs;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzavm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzavn:Ljava/lang/String;

.field private final zzavo:Ljava/lang/String;

.field private final zzavp:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    sget v0, Lcom/google/android/gms/R$string;->cast_closed_captions:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavs;->zzavn:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/R$string;->cast_closed_captions_unavailable:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavs;->zzavo:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavs;->zzavm:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/gms/internal/zzavt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzavt;-><init>(Lcom/google/android/gms/internal/zzavs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavs;->zzavp:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzavs;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->zzavm:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzavs;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzavs;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0
.end method

.method private final zzok()V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzavs;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavs;->zzavo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    if-le v0, v3, :cond_5

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavs;->zzavn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavs;->zzok()V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavs;->zzavp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavs;->zzok()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavs;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
