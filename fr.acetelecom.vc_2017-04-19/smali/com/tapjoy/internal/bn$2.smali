.class final Lcom/tapjoy/internal/bn$2;
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

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lcom/tapjoy/internal/bn$3;->a:[I

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/bw;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->f()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->g()V

    :goto_1
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_1
    const-string v2, "top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    const-string v2, "bottom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
