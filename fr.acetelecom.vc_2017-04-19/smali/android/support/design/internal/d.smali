.class public Landroid/support/design/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/o;


# instance fields
.field private a:Landroid/support/v7/view/menu/h;

.field private b:Landroid/support/design/internal/BottomNavigationMenuView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/d;->b:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/d;->a:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->a(Landroid/support/v7/view/menu/h;)V

    iput-object p2, p0, Landroid/support/design/internal/d;->a:Landroid/support/v7/view/menu/h;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/d;->b:Landroid/support/design/internal/BottomNavigationMenuView;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/internal/d;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/d;->b:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/d;->b:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->b()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/d;->c:Z

    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
