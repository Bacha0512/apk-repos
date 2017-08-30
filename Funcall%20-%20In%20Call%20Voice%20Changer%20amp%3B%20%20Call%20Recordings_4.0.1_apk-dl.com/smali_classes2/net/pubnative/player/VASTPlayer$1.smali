.class Lnet/pubnative/player/VASTPlayer$1;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/player/VASTPlayer;


# direct methods
.method constructor <init>(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$1;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 661
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$1;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->calculateAspectRatio()V

    .line 663
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 645
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "surfaceCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 648
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 652
    .local v0, "invalidSurface":Z
    :goto_1
    if-nez v0, :cond_0

    .line 654
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$1;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$100(Lnet/pubnative/player/VASTPlayer;)V

    .line 655
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$1;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 650
    .end local v0    # "invalidSurface":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 668
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method
