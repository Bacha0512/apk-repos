.class Landroid/support/b/p$a;
.super Landroid/support/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/b/r;


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/y;-><init>()V

    iput-object p1, p0, Landroid/support/b/p$a;->a:Landroid/support/b/r;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/b/p$a;->a:Landroid/support/b/r;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/b/r;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/p$a;->a:Landroid/support/b/r;

    invoke-interface {v0, p1}, Landroid/support/b/r;->a(Landroid/support/b/ae;)V

    return-void
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/p$a;->a:Landroid/support/b/r;

    invoke-interface {v0, p1}, Landroid/support/b/r;->b(Landroid/support/b/ae;)V

    return-void
.end method
