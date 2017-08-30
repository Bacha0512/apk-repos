.class final Lcom/tapjoy/TJPlacement$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->b(Lcom/tapjoy/TJPlacement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementCacheCount()V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->c(Lcom/tapjoy/TJPlacement;)Z

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->d(Lcom/tapjoy/TJPlacement;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->decrementPlacementPreRenderCount()V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJPlacement;Z)Z

    :cond_1
    return-void
.end method

.method public final onContentReady()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$1;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method
