.class public abstract Lcom/tapjoy/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/as;
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tapjoy/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/as;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;)V

    return-void
.end method
