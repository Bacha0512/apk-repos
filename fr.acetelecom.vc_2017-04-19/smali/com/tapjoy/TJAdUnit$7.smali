.class final Lcom/tapjoy/TJAdUnit$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

.field final synthetic b:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$7;->a:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->b:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->p(Lcom/tapjoy/TJAdUnit;)I

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$7;->a:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    return-void
.end method
