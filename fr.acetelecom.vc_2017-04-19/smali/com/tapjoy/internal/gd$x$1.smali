.class final Lcom/tapjoy/internal/gd$x$1;
.super Lcom/tapjoy/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/gd$x;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/gd$x;-><init>(Lcom/tapjoy/internal/dl;B)V

    return-object v0
.end method
