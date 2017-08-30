.class public final Lcom/google/android/gms/internal/zzawi;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzavG:Landroid/view/View;

.field private final zzavH:Z

.field private final zzavI:Landroid/graphics/drawable/Drawable;

.field private final zzavJ:Ljava/lang/String;

.field private final zzavK:Landroid/graphics/drawable/Drawable;

.field private final zzavL:Ljava/lang/String;

.field private final zzavM:Landroid/graphics/drawable/Drawable;

.field private final zzavN:Ljava/lang/String;

.field private final zzavp:Landroid/view/View$OnClickListener;

.field private final zzavr:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawi;->zzavI:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzawi;->zzavK:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/internal/zzawi;->zzavM:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/google/android/gms/R$string;->cast_play:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavJ:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/R$string;->cast_pause:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavL:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/R$string;->cast_stop:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavN:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzawi;->zzavG:Landroid/view/View;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzawi;->zzavH:Z

    new-instance v0, Lcom/google/android/gms/internal/zzawj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzawj;-><init>(Lcom/google/android/gms/internal/zzawi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavp:Landroid/view/View$OnClickListener;

    return-void

    :cond_0
    move-object p5, p4

    goto :goto_0
.end method

.method private final zzX(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavG:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavH:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawi;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawi;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavG:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavG:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final zzok()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawi;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavI:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawi;->zzavJ:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzawi;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavM:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawi;->zzavN:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzawi;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavK:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawi;->zzavL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzawi;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawi;->zzX(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawi;->zzX(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawi;->zzok()V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawi;->zzX(Z)V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawi;->zzavp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawi;->zzok()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawi;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
