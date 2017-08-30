.class public final Lcom/google/android/gms/internal/zzavn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# instance fields
.field private mIsAttached:Z

.field private zzaoX:Lcom/google/android/gms/cast/CastDevice;

.field private final zzarM:Landroid/content/Context;

.field private final zzasB:Lcom/google/android/gms/internal/zzavb;

.field private zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzauZ:Landroid/content/ComponentName;

.field private final zzava:Lcom/google/android/gms/internal/zzavc;

.field private final zzavb:Lcom/google/android/gms/internal/zzavc;

.field private zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

.field private zzavd:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzavb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavn;->zzasB:Lcom/google/android/gms/internal/zzavb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauZ:Landroid/content/ComponentName;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzavc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzavc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzava:Lcom/google/android/gms/internal/zzavc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzava:Lcom/google/android/gms/internal/zzavc;

    new-instance v1, Lcom/google/android/gms/internal/zzavo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzavo;-><init>(Lcom/google/android/gms/internal/zzavn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavc;->zza(Lcom/google/android/gms/internal/zzavd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzavc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzavc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavb:Lcom/google/android/gms/internal/zzavc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavb:Lcom/google/android/gms/internal/zzavc;

    new-instance v1, Lcom/google/android/gms/internal/zzavp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzavp;-><init>(Lcom/google/android/gms/internal/zzavn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavc;->zza(Lcom/google/android/gms/internal/zzavd;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauZ:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzavn;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method private final zza(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    invoke-virtual {v1, v6, v4, v5, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v2

    const-wide/16 v4, 0x200

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauZ:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzof()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_SUBTITLE"

    const-string v4, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, v0, v6}, Lcom/google/android/gms/internal/zzavn;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzava:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzavc;->zzm(Landroid/net/Uri;)Z

    :goto_2
    invoke-direct {p0, v0, v7}, Lcom/google/android/gms/internal/zzavn;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzavb:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzavc;->zzm(Landroid/net/Uri;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzauZ:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v6}, Lcom/google/android/gms/internal/zzavn;->zza(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1, v7}, Lcom/google/android/gms/internal/zzavn;->zza(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0
.end method

.method private final zza(Landroid/graphics/Bitmap;I)V
    .locals 4

    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzof()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzof()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzof()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzavn;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzavn;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private final zzoe()V
    .locals 11

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v5, v6

    :goto_0
    if-nez v5, :cond_3

    move-object v0, v6

    :goto_1
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    move v3, v2

    move-object v4, v5

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzavn;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzog()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoh()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    move v3, v2

    move-object v4, v5

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x6

    move v3, v0

    move-object v4, v5

    move v0, v2

    goto :goto_2

    :pswitch_1
    move v0, v2

    move-object v4, v5

    goto :goto_2

    :pswitch_2
    move v0, v2

    move v3, v4

    move-object v4, v5

    goto :goto_2

    :pswitch_3
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne v8, v4, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v9

    if-eqz v9, :cond_7

    if-eq v8, v1, :cond_5

    if-ne v8, v3, :cond_7

    :cond_5
    move v3, v1

    :goto_5
    if-eqz v0, :cond_8

    move v0, v3

    move v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v9}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v4

    const/4 v0, 0x6

    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_2

    :cond_9
    move v0, v3

    move-object v4, v5

    move v3, v2

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v3, :cond_c

    new-instance v4, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-class v5, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_media_info"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_remote_media_client_player_state"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_cast_device"

    iget-object v5, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "extra_media_session_token"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v3, :cond_d

    move-object v3, v6

    :goto_6
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_f

    move v3, v1

    :goto_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_e

    :goto_8
    const-string v2, "extra_can_skip_next"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_can_skip_prev"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_c
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    goto :goto_6

    :pswitch_4
    move v3, v1

    goto :goto_8

    :cond_e
    move v1, v2

    goto :goto_8

    :cond_f
    move v3, v2

    goto :goto_7

    :cond_10
    move v3, v2

    move v1, v2

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private final zzof()Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0
.end method

.method private final zzog()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private final zzoh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public final onAdBreakStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    return-void
.end method

.method public final onPreloadStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    return-void
.end method

.method public final onQueueStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzavn;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzse()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v5, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzauY:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-static {v2, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-string v4, "CastMediaSession"

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    invoke-direct {p0, v7, v6}, Lcom/google/android/gms/internal/zzavn;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->cast_casting_to_device:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzavq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzavq;-><init>(Lcom/google/android/gms/internal/zzavn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavd:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzavd:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzasB:Lcom/google/android/gms/internal/zzavb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavb;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzavn;->mIsAttached:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoe()V

    goto/16 :goto_0
.end method

.method public final zzab(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzavn;->mIsAttached:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzavn;->mIsAttached:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzse()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzarM:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzasB:Lcom/google/android/gms/internal/zzavb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzavb;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzava:Lcom/google/android/gms/internal/zzavc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzava:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzavc;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavb:Lcom/google/android/gms/internal/zzavc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavb:Lcom/google/android/gms/internal/zzavc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzavc;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/zzavn;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzavc:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_6
    iput-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzase:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzavd:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzog()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;->zzoh()V

    goto :goto_0
.end method
