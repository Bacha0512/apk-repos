.class public Landroid/support/constraint/a/a/i;
.super Landroid/support/constraint/a/a/c;


# instance fields
.field protected K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->w()V

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    instance-of v3, v0, Landroid/support/constraint/a/a/i;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/support/constraint/a/a/i;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/i;->A()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public C()Landroid/support/constraint/a/a/d;
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, p0, Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_2

    check-cast p0, Landroid/support/constraint/a/a/d;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v1

    instance-of v2, v0, Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/constraint/a/a/d;

    move-object p0, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p0, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/support/constraint/a/a/c;->a()V

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/constraint/a/a/c;->b(II)V

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->o()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->p()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/a/a/c;->b(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/i;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/i;->c(Landroid/support/constraint/a/a/c;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;)V

    return-void
.end method

.method public c(Landroid/support/constraint/a/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;)V

    return-void
.end method

.method public w()V
    .locals 5

    invoke-super {p0}, Landroid/support/constraint/a/a/c;->w()V

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/i;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->m()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/i;->n()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/a/a/c;->b(II)V

    instance-of v3, v0, Landroid/support/constraint/a/a/d;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->w()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
