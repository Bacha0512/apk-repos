.class final Lcom/tapjoy/internal/bn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    return-object v0
.end method
