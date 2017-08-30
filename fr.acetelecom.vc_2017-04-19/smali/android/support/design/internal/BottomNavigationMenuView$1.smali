.class Landroid/support/design/internal/BottomNavigationMenuView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->a:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    check-cast p1, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemPosition()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->a:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-static {v1}, Landroid/support/design/internal/BottomNavigationMenuView;->b(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/j;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->a:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-static {v3}, Landroid/support/design/internal/BottomNavigationMenuView;->a(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->a:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-static {v1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->a(Landroid/support/design/internal/BottomNavigationMenuView;I)V

    :cond_0
    return-void
.end method
