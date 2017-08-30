.class Landroid/support/b/aj$a;
.super Landroid/support/b/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/b/al;


# direct methods
.method constructor <init>(Landroid/support/b/al;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/an;-><init>()V

    iput-object p1, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/b/al;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/b/al;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    invoke-interface {v0, p1}, Landroid/support/b/al;->a(Landroid/support/b/ae;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/b/al;->b(Landroid/view/ViewGroup;Landroid/support/b/ae;ILandroid/support/b/ae;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    invoke-interface {v0, p1}, Landroid/support/b/al;->b(Landroid/support/b/ae;)V

    return-void
.end method

.method public c(Landroid/support/b/ae;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/b/aj$a;->a:Landroid/support/b/al;

    invoke-interface {v0, p1}, Landroid/support/b/al;->c(Landroid/support/b/ae;)Z

    move-result v0

    return v0
.end method
