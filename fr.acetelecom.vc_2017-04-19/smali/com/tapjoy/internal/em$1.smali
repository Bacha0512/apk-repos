.class final Lcom/tapjoy/internal/em$1;
.super Lcom/tapjoy/internal/er;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/em;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/em;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/em$1;->a:Lcom/tapjoy/internal/em;

    invoke-direct {p0}, Lcom/tapjoy/internal/er;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .locals 2

    new-instance v0, Lcom/tapjoy/TJPlacement;

    const-string v1, "AppLaunch"

    invoke-direct {v0, p1, v1, p2}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJPlacement;->initiatedBySdk:Z

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "AppLaunch"

    return-object v0
.end method

.method protected final a()Z
    .locals 1

    invoke-super {p0}, Lcom/tapjoy/internal/er;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/fx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
