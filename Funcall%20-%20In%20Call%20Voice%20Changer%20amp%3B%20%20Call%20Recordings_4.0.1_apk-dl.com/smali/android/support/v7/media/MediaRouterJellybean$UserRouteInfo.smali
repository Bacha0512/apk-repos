.class public final Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIconDrawable(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 226
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "stream"    # I

    .prologue
    .line 234
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 235
    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 230
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 231
    return-void
.end method

.method public static setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 257
    return-void
.end method

.method public static setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volume"    # I

    .prologue
    .line 238
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 239
    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    .end local p1    # "volumeCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    .line 252
    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeHandling"    # I

    .prologue
    .line 246
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    .line 247
    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "routeObj"    # Ljava/lang/Object;
    .param p1, "volumeMax"    # I

    .prologue
    .line 242
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    .end local p0    # "routeObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 243
    return-void
.end method
