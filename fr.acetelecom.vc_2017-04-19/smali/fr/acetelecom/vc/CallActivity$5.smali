.class Lfr/acetelecom/vc/CallActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/CallActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v2, 0x7d0

    const v5, 0x7f0200dd

    const v4, 0x7f02009f

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->e(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->e(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/d;

    move-result-object v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lfr/acetelecom/vc/CallActivity$2;->a:[I

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/CallActivity;->e(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/d;

    move-result-object v1

    invoke-virtual {v1}, Lfr/acetelecom/vc/d;->e()Lcom/twilio/client/Connection$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/Connection$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lfr/acetelecom/vc/CallActivity$5$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/CallActivity$5$1;-><init>(Lfr/acetelecom/vc/CallActivity$5;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->h(Lfr/acetelecom/vc/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->e(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/d;

    move-result-object v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
