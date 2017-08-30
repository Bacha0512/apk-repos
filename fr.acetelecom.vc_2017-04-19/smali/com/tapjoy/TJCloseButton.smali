.class public Lcom/tapjoy/TJCloseButton;
.super Landroid/widget/ImageButton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCloseButton$ClosePosition;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/TJCloseButton$ClosePosition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tapjoy/TJCloseButton;->a:Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v0, "tj_close_button.png"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyUtil;->loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tapjoy/TJCloseButton;->a:Lcom/tapjoy/TJCloseButton$ClosePosition;

    iget-object v0, v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setAlpha(F)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tapjoy/TJCloseButton$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCloseButton$1;-><init>(Lcom/tapjoy/TJCloseButton;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
