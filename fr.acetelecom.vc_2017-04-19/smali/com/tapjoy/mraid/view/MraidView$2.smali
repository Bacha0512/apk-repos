.class final Lcom/tapjoy/mraid/view/MraidView$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onExpandClose()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-static {v2, v3}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    const-string v2, "resize_height"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string v2, "resize_width"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const-string v2, "resize_x"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const-string v2, "resize_y"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.fireChangeEvent({ state: \'resized\', size: { width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v2, "resize_customClosePostition"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->c(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResize()Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    const-string v2, "resize_height"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string v2, "resize_width"

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.fireChangeEvent({ state: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', size: { width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->b(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v3}, Lcom/tapjoy/mraid/view/MraidView;->b(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resize: injection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    const-string v2, "resize_customClosePostition"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->c(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->c(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResize()Z

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$7;->a:[I

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->e(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->f(Lcom/tapjoy/mraid/view/MraidView;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->a()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->c(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->g(Lcom/tapjoy/mraid/view/MraidView;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    const-string v0, "window.mraidview.fireChangeEvent({ state: \'hidden\' });"

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "window.mraidview.fireChangeEvent({ state: \'default\' });"

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->LEFT_BEHIND:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.fireErrorEvent(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$2;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
