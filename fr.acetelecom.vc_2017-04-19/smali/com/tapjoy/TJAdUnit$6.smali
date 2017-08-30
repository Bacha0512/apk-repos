.class final Lcom/tapjoy/TJAdUnit$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->playVideo()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoStart()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->l(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->k(Lcom/tapjoy/TJAdUnit;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoStarted(I)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->m(Lcom/tapjoy/TJAdUnit;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$6;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->n(Lcom/tapjoy/TJAdUnit;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
