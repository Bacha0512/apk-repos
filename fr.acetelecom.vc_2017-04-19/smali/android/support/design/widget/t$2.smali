.class Landroid/support/design/widget/t$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/t;->a(Landroid/support/design/widget/r$e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/r$e$a;

.field final synthetic b:Landroid/support/design/widget/t;


# direct methods
.method constructor <init>(Landroid/support/design/widget/t;Landroid/support/design/widget/r$e$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/t$2;->b:Landroid/support/design/widget/t;

    iput-object p2, p0, Landroid/support/design/widget/t$2;->a:Landroid/support/design/widget/r$e$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/t$2;->a:Landroid/support/design/widget/r$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/r$e$a;->c()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/t$2;->a:Landroid/support/design/widget/r$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/r$e$a;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/t$2;->a:Landroid/support/design/widget/r$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/r$e$a;->a()V

    return-void
.end method
