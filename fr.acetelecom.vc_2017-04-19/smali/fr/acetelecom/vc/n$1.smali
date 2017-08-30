.class Lfr/acetelecom/vc/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/n;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/n;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/n;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "SF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    iget-object v0, v0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    iget-object v0, v0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    iget-boolean v0, v0, Lfr/acetelecom/vc/n;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    iget-object v0, v0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    iget-object v0, v0, Lfr/acetelecom/vc/n;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/n$1;->a:Lfr/acetelecom/vc/n;

    const/4 v1, 0x0

    iput-object v1, v0, Lfr/acetelecom/vc/n;->b:Landroid/support/v7/widget/RecyclerView$u;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method
