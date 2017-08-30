.class public final Lcom/tapjoy/internal/gx;
.super Lcom/tapjoy/internal/an;


# instance fields
.field private final a:Lcom/tapjoy/internal/gh;

.field private final b:Lcom/tapjoy/internal/gy;

.field private c:Lcom/tapjoy/internal/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gh;Lcom/tapjoy/internal/gy;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/an;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tapjoy/internal/gx;->a:Lcom/tapjoy/internal/gh;

    iput-object p3, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/gy;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Lcom/tapjoy/internal/gx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->c:Lcom/tapjoy/internal/af;

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tapjoy/internal/gx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/af;->a(Landroid/content/Context;)Lcom/tapjoy/internal/af;

    move-result-object v1

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->a:Lcom/tapjoy/internal/gh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->a:Lcom/tapjoy/internal/gh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gh;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/gx;->c:Lcom/tapjoy/internal/af;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->c:Lcom/tapjoy/internal/af;

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/gy;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->c:Lcom/tapjoy/internal/af;

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gy;->setLandscape(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/an;->onMeasure(II)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/internal/gx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/af;->b(Landroid/content/Context;)Lcom/tapjoy/internal/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/af;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->c()I

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->c()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/gx;->setRotationCount(I)V

    goto :goto_1
.end method
