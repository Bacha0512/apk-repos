.class Landroid/support/design/internal/b;
.super Landroid/support/design/internal/a;


# instance fields
.field private final a:Landroid/support/b/z;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/design/internal/a;-><init>()V

    new-instance v0, Landroid/support/b/a;

    invoke-direct {v0}, Landroid/support/b/a;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/b/z;->a(I)Landroid/support/b/z;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    const-wide/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/support/b/z;->a(J)Landroid/support/b/n;

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/b/z;->a(Landroid/animation/TimeInterpolator;)Landroid/support/b/n;

    new-instance v0, Landroid/support/design/internal/h;

    invoke-direct {v0}, Landroid/support/design/internal/h;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    invoke-virtual {v1, v0}, Landroid/support/b/z;->a(Landroid/support/b/n;)Landroid/support/b/z;

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    invoke-static {p1, v0}, Landroid/support/b/t;->a(Landroid/view/ViewGroup;Landroid/support/b/n;)V

    return-void
.end method
