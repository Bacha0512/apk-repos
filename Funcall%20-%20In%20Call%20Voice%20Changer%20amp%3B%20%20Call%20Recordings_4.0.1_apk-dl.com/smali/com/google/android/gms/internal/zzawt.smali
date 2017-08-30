.class public final Lcom/google/android/gms/internal/zzawt;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzavZ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawt;->zzavZ:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawt;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawt;->zzavZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "com.google.android.gms.cast.metadata.STUDIO"

    goto :goto_1

    :pswitch_1
    const-string v0, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    goto :goto_1

    :pswitch_2
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    goto :goto_1

    :cond_3
    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "com.google.android.gms.cast.metadata.COMPOSER"

    goto :goto_1

    :cond_4
    :pswitch_3
    const-string v0, "com.google.android.gms.cast.metadata.ARTIST"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
