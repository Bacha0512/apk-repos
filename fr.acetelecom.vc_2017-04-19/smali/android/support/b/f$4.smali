.class Landroid/support/b/f$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/b/f;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/b/f;


# direct methods
.method constructor <init>(Landroid/support/b/f;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/b/f$4;->d:Landroid/support/b/f;

    iput-object p2, p0, Landroid/support/b/f$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/b/f$4;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/b/f$4;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/b/f$4;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/b/ah;->d(Landroid/view/View;)Landroid/support/b/ah;

    move-result-object v0

    iget-object v1, p0, Landroid/support/b/f$4;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/support/b/ah;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/b/f$4;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
