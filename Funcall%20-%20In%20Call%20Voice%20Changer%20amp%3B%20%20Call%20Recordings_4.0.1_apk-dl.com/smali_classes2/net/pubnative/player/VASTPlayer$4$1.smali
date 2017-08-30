.class Lnet/pubnative/player/VASTPlayer$4$1;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/pubnative/player/VASTPlayer$4;


# direct methods
.method constructor <init>(Lnet/pubnative/player/VASTPlayer$4;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1123
    :try_start_0
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1126
    .local v0, "currentPosition":I
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1300(Lnet/pubnative/player/VASTPlayer;)Lnet/pubnative/player/widget/CountDownView;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v3, v3, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v3}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lnet/pubnative/player/widget/CountDownView;->setProgress(II)V

    .line 1128
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1400(Lnet/pubnative/player/VASTPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1500(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    if-le v2, v0, :cond_0

    .line 1130
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1600(Lnet/pubnative/player/VASTPlayer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v3, v3, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v3}, Lnet/pubnative/player/VASTPlayer;->access$1400(Lnet/pubnative/player/VASTPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    iget-object v2, v2, Lnet/pubnative/player/VASTPlayer$4;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1600(Lnet/pubnative/player/VASTPlayer;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    .end local v0    # "currentPosition":I
    :cond_0
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v1

    .line 1137
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout timer error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$4$1;->this$1:Lnet/pubnative/player/VASTPlayer$4;

    invoke-virtual {v2}, Lnet/pubnative/player/VASTPlayer$4;->cancel()Z

    goto :goto_0
.end method
