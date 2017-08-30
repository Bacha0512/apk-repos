.class public Lfr/acetelecom/vc/b/a;
.super Landroid/support/v7/widget/RecyclerView$u;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lfr/acetelecom/vc/b/b$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfr/acetelecom/vc/b/a;->n:Landroid/widget/ImageView;

    const v0, 0x7f0e010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfr/acetelecom/vc/b/a;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lfr/acetelecom/vc/b/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lfr/acetelecom/vc/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/b/a;->p:Lfr/acetelecom/vc/b/b$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/b/a;->p:Lfr/acetelecom/vc/b/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/b/a;->p:Lfr/acetelecom/vc/b/b$a;

    invoke-virtual {p0}, Lfr/acetelecom/vc/b/a;->e()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lfr/acetelecom/vc/b/b$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
