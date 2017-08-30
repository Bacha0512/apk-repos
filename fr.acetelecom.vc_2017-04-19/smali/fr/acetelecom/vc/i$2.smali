.class Lfr/acetelecom/vc/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/i;->a(I)V
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

    iput-object p1, p0, Lfr/acetelecom/vc/i$2;->a:Lfr/acetelecom/vc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/i$2;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i$2;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/i$2;->a:Lfr/acetelecom/vc/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/i;->a(Lfr/acetelecom/vc/i;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const-string v0, "VC"

    const-string v1, "playBruitage mediaPlayerMix2.setOnCompletionListener"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i$2;->a:Lfr/acetelecom/vc/i;

    invoke-static {v0}, Lfr/acetelecom/vc/i;->c(Lfr/acetelecom/vc/i;)Lfr/acetelecom/vc/i$a;

    move-result-object v0

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->c()V

    return-void
.end method
