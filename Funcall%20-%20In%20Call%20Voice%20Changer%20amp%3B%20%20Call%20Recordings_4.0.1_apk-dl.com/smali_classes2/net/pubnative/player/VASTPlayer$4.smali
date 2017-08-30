.class Lnet/pubnative/player/VASTPlayer$4;
.super Ljava/util/TimerTask;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer;->startLayoutTimer()V
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
    .line 1104
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v0}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer$4;->cancel()Z

    .line 1144
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v0}, Lnet/pubnative/player/VASTPlayer;->access$600(Lnet/pubnative/player/VASTPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/pubnative/player/VASTPlayer$4$1;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$4$1;-><init>(Lnet/pubnative/player/VASTPlayer$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
