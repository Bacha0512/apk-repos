.class Lfr/acetelecom/vc/c/k$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/c/k;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/k;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/k$1;->a:Lfr/acetelecom/vc/c/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lfr/acetelecom/vc/c/k$1;->a:Lfr/acetelecom/vc/c/k;

    invoke-static {v0}, Lfr/acetelecom/vc/c/k;->a(Lfr/acetelecom/vc/c/k;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c/k$1;->a:Lfr/acetelecom/vc/c/k;

    invoke-static {v0}, Lfr/acetelecom/vc/c/k;->a(Lfr/acetelecom/vc/c/k;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c/k$1;->a:Lfr/acetelecom/vc/c/k;

    invoke-static {v0}, Lfr/acetelecom/vc/c/k;->a(Lfr/acetelecom/vc/c/k;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
