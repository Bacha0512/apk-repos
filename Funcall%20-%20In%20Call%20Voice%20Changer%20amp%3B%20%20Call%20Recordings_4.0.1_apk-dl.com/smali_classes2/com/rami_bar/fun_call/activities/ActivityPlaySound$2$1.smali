.class Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;
.super Ljava/lang/Object;
.source "ActivityPlaySound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->ib_play_sound:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$200(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f02014d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 156
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 157
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 158
    .local v0, "finalTime":I
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 159
    .local v1, "startTime":I
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$300(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 160
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$300(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->myHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$402(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;Landroid/os/Handler;)Landroid/os/Handler;

    .line 162
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->myHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$400(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;->this$1:Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    iget-object v3, v3, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->UpdateSongTime:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$500(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method
