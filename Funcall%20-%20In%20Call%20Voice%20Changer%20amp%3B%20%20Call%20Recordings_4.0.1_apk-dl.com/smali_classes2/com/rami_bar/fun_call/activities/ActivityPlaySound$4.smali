.class Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;
.super Ljava/lang/Object;
.source "ActivityPlaySound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->handleMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 182
    .local v0, "startTime":I
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$300(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 183
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->myHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$400(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
