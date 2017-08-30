.class Lfr/acetelecom/vc/o$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/o;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/o;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/o;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    invoke-static {v0}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    invoke-static {v0}, Lfr/acetelecom/vc/o;->a(Lfr/acetelecom/vc/o;)Lfr/acetelecom/vc/o$a;

    move-result-object v0

    invoke-interface {v0}, Lfr/acetelecom/vc/o$a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v0, v0, Lfr/acetelecom/vc/o;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v0, v0, Lfr/acetelecom/vc/o;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    invoke-virtual {v0}, Lfr/acetelecom/vc/o;->e()Z

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v0, v0, Lfr/acetelecom/vc/o;->j:Lfr/acetelecom/vc/i;

    iget-object v1, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v1, v1, Lfr/acetelecom/vc/o;->b:Lfr/acetelecom/vc/b;

    const-string v2, "dataSoundName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v0, v0, Lfr/acetelecom/vc/o;->j:Lfr/acetelecom/vc/i;

    iget-object v1, p0, Lfr/acetelecom/vc/o$7;->a:Lfr/acetelecom/vc/o;

    iget-object v1, v1, Lfr/acetelecom/vc/o;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lfr/acetelecom/vc/i;->a(Landroid/view/View;I)V

    goto :goto_0
.end method
