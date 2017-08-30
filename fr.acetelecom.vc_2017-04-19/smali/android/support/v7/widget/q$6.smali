.class Landroid/support/v7/widget/q$6;
.super Landroid/support/v7/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/RecyclerView$u;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$u;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/RecyclerView$u;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$u;

    iput p3, p0, Landroid/support/v7/widget/q$6;->b:I

    iput p4, p0, Landroid/support/v7/widget/q$6;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/q$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/widget/q$6;->b:I

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/q$6;->c:I

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/q$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->j(Landroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/q$6;->e:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$6;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->m(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method
