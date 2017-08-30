.class public final Lcom/google/android/gms/internal/zzavw;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private final zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzavr:Landroid/widget/ImageView;

.field private final zzavt:Lcom/google/android/gms/internal/zzavc;

.field private final zzavv:Landroid/graphics/Bitmap;

.field private final zzavw:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V
    .locals 2
    .param p3    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavw;->zzavr:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavw;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavv:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzavw;->zzavw:Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzavw;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    new-instance v0, Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzavc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavt:Lcom/google/android/gms/internal/zzavc;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzavw;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavw:Landroid/view/View;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzavw;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavr:Landroid/widget/ImageView;

    return-object v0
.end method

.method private final zzok()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzavw;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzol()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzol()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavw;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavw;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavw;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavw;->zzavt:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzavc;->zzm(Landroid/net/Uri;)Z

    goto :goto_0
.end method

.method private final zzol()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavw:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavw:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavr:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavw;->zzavv:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzok()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavt:Lcom/google/android/gms/internal/zzavc;

    new-instance v1, Lcom/google/android/gms/internal/zzavx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzavx;-><init>(Lcom/google/android/gms/internal/zzavw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavc;->zza(Lcom/google/android/gms/internal/zzavd;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzol()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzok()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavw;->zzavt:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzavc;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavw;->zzol()V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
