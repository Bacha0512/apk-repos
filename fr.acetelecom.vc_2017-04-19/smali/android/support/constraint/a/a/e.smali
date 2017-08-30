.class public Landroid/support/constraint/a/a/e;
.super Landroid/support/constraint/a/a/c;


# instance fields
.field protected D:F

.field protected E:I

.field protected F:I

.field private G:Landroid/support/constraint/a/a/b;

.field private H:I

.field private I:Z

.field private J:I

.field private K:Landroid/support/constraint/a/a/g;

.field private L:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/constraint/a/a/c;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/e;->D:F

    iput v2, p0, Landroid/support/constraint/a/a/e;->E:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->F:I

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    iput v1, p0, Landroid/support/constraint/a/a/e;->H:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a/e;->I:Z

    iput v1, p0, Landroid/support/constraint/a/a/e;->J:I

    new-instance v0, Landroid/support/constraint/a/a/g;

    invoke-direct {v0}, Landroid/support/constraint/a/a/g;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->K:Landroid/support/constraint/a/a/g;

    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/a/a/e;->L:I

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    return v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->D:F

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->E:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->F:I

    return v0
.end method

.method public a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/e$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/support/constraint/a/e;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v2

    sget-object v1, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    iget v3, p0, Landroid/support/constraint/a/a/e;->H:I

    if-nez v3, :cond_4

    sget-object v1, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v0

    move-object v2, v1

    :goto_1
    iget v1, p0, Landroid/support/constraint/a/a/e;->E:I

    if-eq v1, v4, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/e;->E:I

    invoke-static {p1, v0, v1, v2, v5}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a/e;->F:I

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v0

    iget v2, p0, Landroid/support/constraint/a/a/e;->F:I

    neg-int v2, v2

    invoke-static {p1, v1, v0, v2, v5}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/constraint/a/a/e;->D:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/a/a/e;->D:F

    iget-boolean v5, p0, Landroid/support/constraint/a/a/e;->I:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;FZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a/e;->J:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Landroid/support/constraint/a/e;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/e;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/e;->b(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/e;->c(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/e;->e(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/e;->d(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/e;->b(I)V

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/e;->c(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/e;->d(I)V

    invoke-virtual {p0, v3}, Landroid/support/constraint/a/a/e;->e(I)V

    goto :goto_0
.end method

.method public e(F)V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/e;->D:F

    iput v1, p0, Landroid/support/constraint/a/a/e;->E:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->F:I

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/e;->H:I

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    :goto_1
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->G:Landroid/support/constraint/a/a/b;

    goto :goto_1
.end method

.method public l(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/e;->D:F

    iput p1, p0, Landroid/support/constraint/a/a/e;->E:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->F:I

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/e;->D:F

    iput v1, p0, Landroid/support/constraint/a/a/e;->E:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->F:I

    :cond_0
    return-void
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->k:Ljava/util/ArrayList;

    return-object v0
.end method
