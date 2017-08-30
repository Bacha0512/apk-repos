.class Landroid/support/b/ad$a;
.super Landroid/support/b/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/b/ad;


# direct methods
.method constructor <init>(Landroid/support/b/ad;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/b/y$c;-><init>()V

    iput-object p1, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/b/y;)V
    .locals 2

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    iget v1, v0, Landroid/support/b/ad;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/b/ad;->b:I

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    iget v0, v0, Landroid/support/b/ad;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/b/ad;->c:Z

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    invoke-virtual {v0}, Landroid/support/b/ad;->g()V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/b/y;->b(Landroid/support/b/y$b;)Landroid/support/b/y;

    return-void
.end method

.method public d(Landroid/support/b/y;)V
    .locals 2

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    iget-boolean v0, v0, Landroid/support/b/ad;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    invoke-virtual {v0}, Landroid/support/b/ad;->f()V

    iget-object v0, p0, Landroid/support/b/ad$a;->a:Landroid/support/b/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/b/ad;->c:Z

    :cond_0
    return-void
.end method
