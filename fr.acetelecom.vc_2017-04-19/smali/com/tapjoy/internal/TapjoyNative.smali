.class public Lcom/tapjoy/internal/TapjoyNative;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/tapjoy/internal/ep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/tapjoy/internal/ep;
    .end annotation

    invoke-static {}, Lcom/tapjoy/internal/et;->a()Lcom/tapjoy/internal/et;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/et;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
