.class final Lcom/tapjoy/TJPlacement$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/ff;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPlacement;->showContent()V
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

    iput-object p1, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v1}, Lcom/tapjoy/TJPlacement;->h(Lcom/tapjoy/TJPlacement;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "placement_data"

    iget-object v2, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v2}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$7;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    goto :goto_0
.end method
