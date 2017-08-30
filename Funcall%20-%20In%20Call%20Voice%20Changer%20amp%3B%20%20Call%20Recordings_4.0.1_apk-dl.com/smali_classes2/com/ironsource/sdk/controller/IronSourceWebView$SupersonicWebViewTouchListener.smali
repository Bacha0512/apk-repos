.class Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicWebViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 248
    .local v12, "xTouch":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 250
    .local v13, "yTouch":F
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v11

    .line 253
    .local v11, "width":I
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v10

    .line 255
    .local v10, "height":I
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v8

    .line 259
    .local v8, "boundsTouchAreaX":I
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v9

    .line 260
    .local v9, "boundsTouchAreaY":I
    const/4 v6, 0x0

    .line 261
    .local v6, "actualTouchX":I
    const/4 v7, 0x0

    .line 263
    .local v7, "actualTouchY":I
    const-string v0, "top-right"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 266
    float-to-int v7, v13

    .line 284
    :cond_0
    :goto_0
    if-gt v6, v8, :cond_2

    if-gt v7, v9, :cond_2

    .line 287
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 292
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 296
    :cond_1
    iget-object v14, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;JJ)V

    .line 313
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 296
    # setter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {v14, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 317
    .end local v6    # "actualTouchX":I
    .end local v7    # "actualTouchY":I
    .end local v8    # "boundsTouchAreaX":I
    .end local v9    # "boundsTouchAreaY":I
    .end local v10    # "height":I
    .end local v11    # "width":I
    .end local v12    # "xTouch":F
    .end local v13    # "yTouch":F
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 268
    .restart local v6    # "actualTouchX":I
    .restart local v7    # "actualTouchY":I
    .restart local v8    # "boundsTouchAreaX":I
    .restart local v9    # "boundsTouchAreaY":I
    .restart local v10    # "height":I
    .restart local v11    # "width":I
    .restart local v12    # "xTouch":F
    .restart local v13    # "yTouch":F
    :cond_3
    const-string v0, "top-left"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    float-to-int v6, v12

    .line 271
    float-to-int v7, v13

    goto :goto_0

    .line 273
    :cond_4
    const-string v0, "bottom-right"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 276
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_0

    .line 278
    :cond_5
    const-string v0, "bottom-left"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    float-to-int v6, v12

    .line 281
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_0
.end method
