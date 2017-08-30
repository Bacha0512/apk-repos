.class public final Lcom/tapjoy/internal/gm;
.super Ljava/lang/Object;


# static fields
.field public static final n:Lcom/tapjoy/internal/bm;


# instance fields
.field public a:Lcom/tapjoy/internal/go;

.field public b:Lcom/tapjoy/internal/go;

.field public c:Lcom/tapjoy/internal/go;

.field public d:Lcom/tapjoy/internal/go;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lcom/tapjoy/internal/gk;

.field public m:Lcom/tapjoy/internal/gk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gm$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gm$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gm;->n:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tapjoy/internal/gm;->e:I

    iput v3, p0, Lcom/tapjoy/internal/gm;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gm;->j:Z

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->a:Lcom/tapjoy/internal/go;

    goto :goto_0

    :cond_0
    const-string v1, "y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->b:Lcom/tapjoy/internal/go;

    goto :goto_0

    :cond_1
    const-string v1, "width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->c:Lcom/tapjoy/internal/go;

    goto :goto_0

    :cond_2
    const-string v1, "height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->d:Lcom/tapjoy/internal/go;

    goto :goto_0

    :cond_3
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->g:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "redirect_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->h:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "ad_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gm;->j:Z

    goto/16 :goto_0

    :cond_7
    const-string v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->l:Lcom/tapjoy/internal/gk;

    goto/16 :goto_0

    :cond_9
    const-string v1, "image_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gk;

    iput-object v0, p0, Lcom/tapjoy/internal/gm;->m:Lcom/tapjoy/internal/gk;

    goto/16 :goto_0

    :cond_a
    const-string v1, "align"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput v2, p0, Lcom/tapjoy/internal/gm;->e:I

    goto/16 :goto_0

    :cond_b
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0xb

    iput v0, p0, Lcom/tapjoy/internal/gm;->e:I

    goto/16 :goto_0

    :cond_c
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iput v0, p0, Lcom/tapjoy/internal/gm;->e:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_e
    const-string v1, "valign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iput v3, p0, Lcom/tapjoy/internal/gm;->f:I

    goto/16 :goto_0

    :cond_f
    const-string v1, "middle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0xf

    iput v0, p0, Lcom/tapjoy/internal/gm;->f:I

    goto/16 :goto_0

    :cond_10
    const-string v1, "bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc

    iput v0, p0, Lcom/tapjoy/internal/gm;->f:I

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    return-void
.end method
