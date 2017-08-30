.class Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;
.super Ljava/lang/Object;
.source "ActivityPlaySound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 147
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->pb_play_sound:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$100(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 165
    return-void
.end method
