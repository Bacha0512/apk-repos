.class Lcom/oneaudience/sdk/l$b;
.super Lcom/oneaudience/sdk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/q;-><init>()V

    iput-object p2, p0, Lcom/oneaudience/sdk/l$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oneaudience/sdk/l$b;->c:Z

    return-void
.end method

.method private c()Z
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Populating Installed Apps to Registry"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneaudience/sdk/a;->b()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.keyguard"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v8}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneaudience/sdk/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ADDING APP TO DICTIONARY: %s"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-static {v2, v8, v9}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/oneaudience/sdk/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/oneaudience/sdk/a;

    move v0, v4

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "NA"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v1

    const-string v8, "Couldn\'t get application package name"

    invoke-static {v1, v8}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NA"

    goto :goto_2

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneaudience/sdk/a;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "APP WAS REMOVED: %s"

    invoke-static {v5, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Can\'t remove package: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v2, v5, v6}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/a;->a()Z

    iget-object v0, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apps_registry_first_save"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Lcom/oneaudience/sdk/b/b/c;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/oneaudience/sdk/l$b$1;

    invoke-direct {v3, p0}, Lcom/oneaudience/sdk/l$b$1;-><init>(Lcom/oneaudience/sdk/l$b;)V

    invoke-static {v1, v3}, Lcom/oneaudience/sdk/b/b/b;->a(Ljava/util/Collection;Lcom/oneaudience/sdk/b/b/b$a;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/oneaudience/sdk/l$b$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/oneaudience/sdk/l$b$2;-><init>(Lcom/oneaudience/sdk/l$b;Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-static {v1, v3}, Lcom/oneaudience/sdk/b/b/b;->a(Ljava/util/Iterator;Lcom/oneaudience/sdk/b/b/b$b;)V

    iget-object v1, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v1}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "email"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0}, Lcom/oneaudience/sdk/l$b;->c()Z

    move-result v0

    invoke-direct {p0}, Lcom/oneaudience/sdk/l$b;->d()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/oneaudience/sdk/q;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/oneaudience/sdk/l$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "opt_out"

    iget-boolean v2, p0, Lcom/oneaudience/sdk/l$b;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device info changed"

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance v1, Lcom/oneaudience/sdk/l$c;

    iget-object v2, p0, Lcom/oneaudience/sdk/l$b;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {v1, v2, v3}, Lcom/oneaudience/sdk/l$c;-><init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V

    invoke-virtual {v1, v3, v3, v0}, Lcom/oneaudience/sdk/l$c;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device Info didn\'t change"

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
