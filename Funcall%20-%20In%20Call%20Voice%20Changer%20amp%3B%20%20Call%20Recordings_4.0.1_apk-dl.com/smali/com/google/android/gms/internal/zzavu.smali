.class public final Lcom/google/android/gms/internal/zzavu;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private final zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzavr:Landroid/widget/ImageView;

.field private final zzavs:Landroid/graphics/Bitmap;

.field private final zzavt:Lcom/google/android/gms/internal/zzavc;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V
    .locals 2
    .param p3    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavu;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavs:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    new-instance v0, Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzavc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavt:Lcom/google/android/gms/internal/zzavc;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzavu;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    return-object v0
.end method

.method private final zzok()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzavu;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzavs:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPreloadedItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzavs:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzatH:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavu;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzavt:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzavc;->zzm(Landroid/net/Uri;)Z

    goto :goto_0
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavu;->zzok()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavt:Lcom/google/android/gms/internal/zzavc;

    new-instance v1, Lcom/google/android/gms/internal/zzavv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzavv;-><init>(Lcom/google/android/gms/internal/zzavu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavc;->zza(Lcom/google/android/gms/internal/zzavd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzavs:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavu;->zzok()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavt:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzavc;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavu;->zzavr:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzavs:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
