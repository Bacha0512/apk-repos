.class Landroid/support/design/internal/f$b;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/design/internal/f$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/f;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/f$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/j;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/f;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/support/design/internal/f$b;->f()V

    return-void
.end method

.method private a(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/f$f;->a:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 14

    iget-boolean v0, p0, Landroid/support/design/internal/f$b;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/f$b;->d:Z

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/f$c;

    invoke-direct {v1}, Landroid/support/design/internal/f$c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_e

    iget-object v0, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v0, v0, Landroid/support/design/internal/f;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/design/internal/f$b;->a(Landroid/support/v7/view/menu/j;)V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->a(Z)V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v7, :cond_3

    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/f$e;

    iget-object v6, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget v6, v6, Landroid/support/design/internal/f;->j:I

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/f$e;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/f$f;

    invoke-direct {v2, v0}, Landroid/support/design/internal/f$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/view/menu/j;->a(Z)V

    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/design/internal/f$b;->a(Landroid/support/v7/view/menu/j;)V

    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/f$f;

    invoke-direct {v13, v1}, Landroid/support/design/internal/f$f;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/f$b;->a(II)V

    :cond_9
    move v0, v5

    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v5, v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v6

    if-eq v6, v5, :cond_d

    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    if-eqz v7, :cond_b

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/f$e;

    iget-object v5, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget v5, v5, Landroid/support/design/internal/f;->j:I

    iget-object v9, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget v9, v9, Landroid/support/design/internal/f;->j:I

    invoke-direct {v4, v5, v9}, Landroid/support/design/internal/f$e;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    new-instance v3, Landroid/support/design/internal/f$f;

    invoke-direct {v3, v0}, Landroid/support/design/internal/f$f;-><init>(Landroid/support/v7/view/menu/j;)V

    iput-boolean v1, v3, Landroid/support/design/internal/f$f;->a:Z

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v4, v2

    move v0, v6

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v4, v2}, Landroid/support/design/internal/f$b;->a(II)V

    move v2, v4

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/f$b;->d:Z

    goto/16 :goto_0

    :cond_f
    move v1, v3

    move v2, v4

    goto :goto_5
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/f$j;
    .locals 3

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/support/design/internal/f$g;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v2, v2, Landroid/support/design/internal/f;->k:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/f$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/support/design/internal/f$i;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/f$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/support/design/internal/f$h;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->d:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/f$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/support/design/internal/f$a;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->a:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/support/design/internal/f$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/f$b;->d:Z

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$d;

    instance-of v3, v0, Landroid/support/design/internal/f$f;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/design/internal/f$f;

    invoke-virtual {v0}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/f$b;->a(Landroid/support/v7/view/menu/j;)V

    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/f$b;->d:Z

    invoke-direct {p0}, Landroid/support/design/internal/f$b;->f()V

    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$d;

    instance-of v1, v0, Landroid/support/design/internal/f$f;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/support/design/internal/f$f;

    invoke-virtual {v0}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(Landroid/support/design/internal/f$j;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/internal/f$g;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/design/internal/f$j;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/internal/f$j;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Landroid/support/design/internal/f$b;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/f$j;->a:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-boolean v1, v1, Landroid/support/design/internal/f;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget v1, v1, Landroid/support/design/internal/f;->e:I

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/f$b;->a:Landroid/support/design/internal/f;

    iget-object v1, v1, Landroid/support/design/internal/f;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/f$f;

    iget-boolean v2, v1, Landroid/support/design/internal/f$f;->a:Z

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    invoke-virtual {v1}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/view/menu/j;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/f$j;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/f$f;

    invoke-virtual {v1}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$e;

    iget-object v1, p1, Landroid/support/design/internal/f$j;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/f$e;->a()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/internal/f$e;->b()I

    move-result v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    check-cast p1, Landroid/support/design/internal/f$j;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/f$b;->a(Landroid/support/design/internal/f$j;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 0

    check-cast p1, Landroid/support/design/internal/f$j;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/f$b;->a(Landroid/support/design/internal/f$j;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/f$b;->d:Z

    return-void
.end method

.method public b(I)I
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$d;

    instance-of v1, v0, Landroid/support/design/internal/f$e;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/f$c;

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/f$f;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/support/design/internal/f$f;

    invoke-virtual {v0}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/f$b;->a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/f$j;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/internal/f$b;->f()V

    invoke-virtual {p0}, Landroid/support/design/internal/f$b;->e()V

    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    const-string v0, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/f$b;->c:Landroid/support/v7/view/menu/j;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p0, Landroid/support/design/internal/f$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/f$d;

    instance-of v4, v0, Landroid/support/design/internal/f$f;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/support/design/internal/f$f;

    invoke-virtual {v0}, Landroid/support/design/internal/f$f;->a()Landroid/support/v7/view/menu/j;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    new-instance v5, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v5}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v1
.end method
