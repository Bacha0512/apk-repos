.class Lfr/acetelecom/vc/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/i;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/i;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0, v2}, Lfr/acetelecom/vc/i;->a(Lfr/acetelecom/vc/i;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->c(Lfr/acetelecom/vc/i;)Lfr/acetelecom/vc/i$a;

    move-result-object v0

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->c()V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/i;->a(Lfr/acetelecom/vc/i;Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->d(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->d(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0, v2}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->c(Lfr/acetelecom/vc/i;)Lfr/acetelecom/vc/i$a;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/i$3;->a:Lfr/acetelecom/vc/i;

    iget-object v1, v1, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/i$a;->a(Ljava/lang/String;)V

    return-void
.end method
