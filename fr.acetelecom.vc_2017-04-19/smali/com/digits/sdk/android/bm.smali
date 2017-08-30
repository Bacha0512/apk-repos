.class Lcom/digits/sdk/android/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/bl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/bm$b;,
        Lcom/digits/sdk/android/bm$a;,
        Lcom/digits/sdk/android/bm$c;
    }
.end annotation


# instance fields
.field a:Lcom/digits/sdk/android/bj;

.field b:Lcom/digits/sdk/android/bp;

.field c:Landroid/os/Bundle;

.field d:Landroid/text/TextWatcher;

.field e:Landroid/widget/ListView;

.field f:Landroid/widget/EditText;

.field g:Lcom/digits/sdk/android/q;

.field h:Landroid/app/LoaderManager$LoaderCallbacks;

.field i:Landroid/app/LoaderManager;

.field j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/digits/sdk/android/ac;

.field l:Lcom/digits/sdk/android/ar;

.field m:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/internal/b;->a:Lcom/digits/sdk/android/internal/b;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/b;->a()Lcom/digits/sdk/android/bp;

    move-result-object v0

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/digits/sdk/android/bm;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/digits/sdk/android/bp;Lcom/digits/sdk/android/ar;)V

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/digits/sdk/android/bp;Lcom/digits/sdk/android/ar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->j:Ljava/util/Set;

    iput-object p1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    iput-object p4, p0, Lcom/digits/sdk/android/bm;->l:Lcom/digits/sdk/android/ar;

    iput-object p3, p0, Lcom/digits/sdk/android/bm;->b:Lcom/digits/sdk/android/bp;

    iput-object p2, p0, Lcom/digits/sdk/android/bm;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->c()V

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__invites_list:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__contacts_filter_edit_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digits/sdk/android/internal/f;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->k:Lcom/digits/sdk/android/ac;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->k:Lcom/digits/sdk/android/ac;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->l:Lcom/digits/sdk/android/ar;

    new-instance v0, Lcom/digits/sdk/android/bj;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/digits/sdk/android/internal/d;

    iget-object v6, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    iget-object v7, p0, Lcom/digits/sdk/android/bm;->c:Landroid/os/Bundle;

    sget-object v8, Lcom/digits/sdk/android/internal/c;->c:Lcom/digits/sdk/android/internal/c$b;

    iget-object v9, p0, Lcom/digits/sdk/android/bm;->b:Lcom/digits/sdk/android/bp;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/digits/sdk/android/internal/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/digits/sdk/android/internal/c;Lcom/digits/sdk/android/bp;)V

    new-instance v6, Lcom/digits/sdk/android/bm$b;

    invoke-direct {v6, p0, p0}, Lcom/digits/sdk/android/bm$b;-><init>(Lcom/digits/sdk/android/bm;Lcom/digits/sdk/android/bm;)V

    iget-object v7, p0, Lcom/digits/sdk/android/bm;->l:Lcom/digits/sdk/android/ar;

    invoke-static {}, Lcom/digits/sdk/android/ac;->c()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/digits/sdk/android/bj;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/al;ILjava/lang/String;Lcom/digits/sdk/android/internal/d;Lcom/digits/sdk/android/bk;Lcom/digits/sdk/android/ar;Z)V

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->a:Lcom/digits/sdk/android/bj;

    new-instance v0, Lcom/digits/sdk/android/cd;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    iget-object v2, p0, Lcom/digits/sdk/android/bm;->a:Lcom/digits/sdk/android/bj;

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/cd;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/ap;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->h:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->i:Landroid/app/LoaderManager;

    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->e()Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->d:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->k:Lcom/digits/sdk/android/ac;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->n()Lcom/digits/sdk/android/q;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->g:Lcom/digits/sdk/android/q;

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bm;->m:Lcom/twitter/sdk/android/core/k;

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->m:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "DigitsInviteFriends"

    iget-object v2, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    sget v3, Lcom/digits/sdk/android/cb$g;->dgts__invite_no_session_warning:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->g()V

    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->f()V

    invoke-static {}, Lcom/digits/sdk/android/ac;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bm;->a(Z)V

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/digits/sdk/android/bm;->j()V

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->i:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/digits/sdk/android/bm;->h:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method a(Landroid/app/LoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "invitedPhoneNumbers"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/digits/sdk/android/bm;->j:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "search_prefix"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method a(Lcom/digits/sdk/android/models/Invite;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->l:Lcom/digits/sdk/android/ar;

    new-instance v1, Lcom/digits/sdk/android/a/i;

    invoke-direct {v1, p1}, Lcom/digits/sdk/android/a/i;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/i;)V

    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->m:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->g:Lcom/digits/sdk/android/q;

    new-instance v1, Lcom/digits/sdk/android/bm$a;

    invoke-direct {v1, p0}, Lcom/digits/sdk/android/bm$a;-><init>(Lcom/digits/sdk/android/bm;)V

    invoke-virtual {v0, p1, v1}, Lcom/digits/sdk/android/q;->a([Ljava/lang/String;Lcom/twitter/sdk/android/core/c;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/digits/sdk/android/ac;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/digits/sdk/android/bm;->j:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    iget-object v2, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    sget v1, Lcom/digits/sdk/android/cb$f;->dgts__activity_friend_finder_discovery:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Landroid/text/TextWatcher;
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/bm$1;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/bm$1;-><init>(Lcom/digits/sdk/android/bm;)V

    return-object v0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->a:Lcom/digits/sdk/android/bj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method h()V
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->i:Landroid/app/LoaderManager;

    iget-object v1, p0, Lcom/digits/sdk/android/bm;->h:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v2, p0, Lcom/digits/sdk/android/bm;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/digits/sdk/android/bm;->a(Landroid/app/LoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method i()Lcom/digits/sdk/android/aw;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->m:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    return-object v0
.end method

.method j()V
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->m:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bm;->g:Lcom/digits/sdk/android/q;

    new-instance v1, Lcom/digits/sdk/android/bm$c;

    iget-object v2, p0, Lcom/digits/sdk/android/bm;->n:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/digits/sdk/android/bm$c;-><init>(Lcom/digits/sdk/android/bm;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/q;->a(Lcom/twitter/sdk/android/core/c;)V

    :cond_0
    return-void
.end method
