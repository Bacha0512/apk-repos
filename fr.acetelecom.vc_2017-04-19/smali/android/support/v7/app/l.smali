.class Landroid/support/v7/app/l;
.super Landroid/support/v7/app/ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/l$b;,
        Landroid/support/v7/app/l$c;,
        Landroid/support/v7/app/l$a;,
        Landroid/support/v7/app/l$d;
    }
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/p;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v7/view/menu/f;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/support/v7/widget/Toolbar$b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/app/l$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l$1;-><init>(Landroid/support/v7/app/l;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/app/l$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/l$2;-><init>(Landroid/support/v7/app/l;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/widget/Toolbar$b;

    new-instance v0, Landroid/support/v7/widget/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/ao;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    new-instance v0, Landroid/support/v7/app/l$d;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/l$d;-><init>(Landroid/support/v7/app/l;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/p;->a(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/widget/Toolbar$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$b;)V

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v3, Landroid/support/v7/a/a$a;->actionBarPopupTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    sget v3, Landroid/support/v7/a/a$a;->panelMenuListTheme:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    new-instance v0, Landroid/support/v7/view/menu/f;

    sget v2, Landroid/support/v7/a/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    new-instance v1, Landroid/support/v7/app/l$c;

    invoke-direct {v1, p0}, Landroid/support/v7/app/l$c;-><init>(Landroid/support/v7/app/l;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/o$a;)V

    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;)V

    :cond_1
    return-void

    :cond_2
    sget v1, Landroid/support/v7/a/a$i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method private l()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/l;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    new-instance v1, Landroid/support/v7/app/l$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/l$a;-><init>(Landroid/support/v7/app/l;)V

    new-instance v2, Landroid/support/v7/app/l$b;

    invoke-direct {v2, p0}, Landroid/support/v7/app/l$b;-><init>(Landroid/support/v7/app/l;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/p;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/l;->d:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->r()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->o()I

    move-result v0

    return v0
.end method

.method a(Landroid/view/Menu;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/app/l;->b(Landroid/view/Menu;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->d()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v1}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/l;->l()Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/widget/p;->d(I)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->q()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/l;->e:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/l;->e:Z

    iget-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$a;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/support/v7/widget/p;

    invoke-interface {v0}, Landroid/support/v7/widget/p;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method k()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/l;->l()Landroid/view/Menu;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/view/menu/h;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->g()V

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->h()V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->h()V

    :cond_5
    throw v0
.end method
