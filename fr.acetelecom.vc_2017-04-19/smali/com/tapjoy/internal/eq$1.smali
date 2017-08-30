.class final Lcom/tapjoy/internal/eq$1;
.super Lcom/tapjoy/internal/er;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/eq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/eq$1;->a:Lcom/tapjoy/internal/eq;

    invoke-direct {p0}, Lcom/tapjoy/internal/er;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .locals 3

    check-cast p3, Lcom/tapjoy/internal/fx$a;

    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p3, Lcom/tapjoy/internal/fx$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    iget-object v1, p3, Lcom/tapjoy/internal/fx$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/tapjoy/internal/fx$a;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tapjoy/internal/fx$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/util/Observer;)Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/tapjoy/internal/er;->a(Ljava/util/Observer;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)Lcom/tapjoy/internal/er$a;
    .locals 2

    check-cast p1, Lcom/tapjoy/internal/fx$a;

    new-instance v0, Lcom/tapjoy/internal/er$a;

    iget-object v1, p1, Lcom/tapjoy/internal/fx$a;->d:Lcom/tapjoy/internal/eg;

    invoke-direct {v0, p0, p1, v1}, Lcom/tapjoy/internal/er$a;-><init>(Lcom/tapjoy/internal/er;Ljava/lang/Object;Lcom/tapjoy/internal/eg;)V

    return-object v0
.end method
