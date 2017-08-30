.class Landroid/support/v7/widget/q$5;
.super Landroid/support/v7/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->c(Landroid/support/v7/widget/RecyclerView$u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$u;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    iput-object p3, p0, Landroid/support/v7/widget/q$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/q$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->k(Landroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/q$5;->c:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->n(Landroid/support/v7/widget/RecyclerView$u;)V

    return-void
.end method
