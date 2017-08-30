.class Lnet/pubnative/player/VASTPlayer$2;
.super Ljava/util/TimerTask;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer;->startVideoProgressTimer()V
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
    .line 959
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 964
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 966
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 967
    .local v0, "firstPosition":I
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v3}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 969
    .local v1, "lastPosition":I
    if-le v1, v0, :cond_2

    .line 971
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$400(Lnet/pubnative/player/VASTPlayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2, v4}, Lnet/pubnative/player/VASTPlayer;->access$402(Lnet/pubnative/player/VASTPlayer;Z)Z

    .line 974
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$600(Lnet/pubnative/player/VASTPlayer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lnet/pubnative/player/VASTPlayer$2$1;

    invoke-direct {v3, p0}, Lnet/pubnative/player/VASTPlayer$2$1;-><init>(Lnet/pubnative/player/VASTPlayer$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1003
    .end local v0    # "firstPosition":I
    .end local v1    # "lastPosition":I
    :cond_1
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v3}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void

    .line 986
    .restart local v0    # "firstPosition":I
    .restart local v1    # "lastPosition":I
    :cond_2
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$400(Lnet/pubnative/player/VASTPlayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 988
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/pubnative/player/VASTPlayer;->access$402(Lnet/pubnative/player/VASTPlayer;Z)Z

    .line 989
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$600(Lnet/pubnative/player/VASTPlayer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lnet/pubnative/player/VASTPlayer$2$2;

    invoke-direct {v3, p0}, Lnet/pubnative/player/VASTPlayer$2$2;-><init>(Lnet/pubnative/player/VASTPlayer$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
