.class public Lfr/acetelecom/vc/a/a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lfr/acetelecom/vc/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lfr/acetelecom/vc/n;

.field b:Lfr/acetelecom/vc/b;

.field c:Z

.field d:Lfr/acetelecom/vc/a/a$a;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfr/acetelecom/vc/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lfr/acetelecom/vc/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lfr/acetelecom/vc/e;",
            ">;",
            "Lfr/acetelecom/vc/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p2, p0, Lfr/acetelecom/vc/a/a;->e:Ljava/util/ArrayList;

    iput-object p3, p0, Lfr/acetelecom/vc/a/a;->a:Lfr/acetelecom/vc/n;

    new-instance v0, Lfr/acetelecom/vc/b;

    invoke-direct {v0, p1}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/a/a;->b:Lfr/acetelecom/vc/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/a/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lfr/acetelecom/vc/b/a;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lfr/acetelecom/vc/b/a;

    invoke-direct {v1, v0}, Lfr/acetelecom/vc/b/a;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 0

    check-cast p1, Lfr/acetelecom/vc/b/a;

    invoke-virtual {p0, p1, p2}, Lfr/acetelecom/vc/a/a;->a(Lfr/acetelecom/vc/b/a;I)V

    return-void
.end method

.method public a(Lfr/acetelecom/vc/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/a/a;->d:Lfr/acetelecom/vc/a/a$a;

    return-void
.end method

.method public a(Lfr/acetelecom/vc/b/a;I)V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/acetelecom/vc/e;

    invoke-virtual {v0}, Lfr/acetelecom/vc/e;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p1, Lfr/acetelecom/vc/b/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lfr/acetelecom/vc/a/a$1;

    invoke-direct {v1, p0, v0}, Lfr/acetelecom/vc/a/a$1;-><init>(Lfr/acetelecom/vc/a/a;Lfr/acetelecom/vc/e;)V

    invoke-virtual {p1, v1}, Lfr/acetelecom/vc/b/a;->a(Lfr/acetelecom/vc/b/b$a;)V

    iget-boolean v1, p0, Lfr/acetelecom/vc/a/a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/a/a;->b:Lfr/acetelecom/vc/b;

    const-string v2, "ambpos"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/a/a;->d:Lfr/acetelecom/vc/a/a$a;

    invoke-interface {v1, p1, p2, v0}, Lfr/acetelecom/vc/a/a$a;->a(Landroid/support/v7/widget/RecyclerView$u;ILfr/acetelecom/vc/e;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lfr/acetelecom/vc/a/a;->c:Z

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lfr/acetelecom/vc/a/a;->a(Landroid/view/ViewGroup;I)Lfr/acetelecom/vc/b/a;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lfr/acetelecom/vc/a/a;->c(I)V

    return-void
.end method
