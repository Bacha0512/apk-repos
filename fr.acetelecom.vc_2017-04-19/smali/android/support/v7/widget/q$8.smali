.class Landroid/support/v7/widget/q$8;
.super Landroid/support/v7/widget/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/q$a;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/q$8;->d:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$8;->a:Landroid/support/v7/widget/q$a;

    iput-object p3, p0, Landroid/support/v7/widget/q$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Landroid/support/v7/widget/q$8;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v7/widget/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->d:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$8;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/q;->a(Landroid/support/v7/widget/RecyclerView$u;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->d:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$8;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->d:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/q$8;->d:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/q$8;->a:Landroid/support/v7/widget/q$a;

    iget-object v1, v1, Landroid/support/v7/widget/q$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/RecyclerView$u;Z)V

    return-void
.end method
