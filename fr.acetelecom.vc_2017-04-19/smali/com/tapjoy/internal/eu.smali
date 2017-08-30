.class final Lcom/tapjoy/internal/eu;
.super Lcom/tapjoy/internal/et;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/et;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-direct {v0, p1, p2, p3}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    return-object v0
.end method
