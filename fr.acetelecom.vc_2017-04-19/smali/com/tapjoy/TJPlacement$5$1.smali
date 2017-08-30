.class final Lcom/tapjoy/TJPlacement$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPlacement$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJPlacement$5;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPlacement$5;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacement$5$1;->a:Lcom/tapjoy/TJPlacement$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$5$1;->a:Lcom/tapjoy/TJPlacement$5;

    iget-object v0, v0, Lcom/tapjoy/TJPlacement$5;->c:Lcom/tapjoy/TJPlacement;

    iget-object v1, p0, Lcom/tapjoy/TJPlacement$5$1;->a:Lcom/tapjoy/TJPlacement$5;

    iget-object v1, v1, Lcom/tapjoy/TJPlacement$5;->c:Lcom/tapjoy/TJPlacement;

    invoke-static {v1}, Lcom/tapjoy/TJPlacement;->m(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJPlacement$5$1;->a:Lcom/tapjoy/TJPlacement$5;

    iget-object v2, v2, Lcom/tapjoy/TJPlacement$5;->c:Lcom/tapjoy/TJPlacement;

    invoke-static {v2}, Lcom/tapjoy/TJPlacement;->f(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJAdUnit;->preload(Lcom/tapjoy/TJPlacementData;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJPlacement;Z)Z

    return-void
.end method
