.class public Lcom/oneaudience/sdk/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/l$i;,
        Lcom/oneaudience/sdk/l$f;,
        Lcom/oneaudience/sdk/l$h;,
        Lcom/oneaudience/sdk/l$b;,
        Lcom/oneaudience/sdk/l$a;,
        Lcom/oneaudience/sdk/l$d;,
        Lcom/oneaudience/sdk/l$g;,
        Lcom/oneaudience/sdk/l$c;,
        Lcom/oneaudience/sdk/l$e;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static h:Lcom/oneaudience/sdk/l;


# instance fields
.field private final b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:Lcom/oneaudience/sdk/a;

.field private f:Lcom/oneaudience/sdk/l$i;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/oneaudience/sdk/l;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneaudience/sdk/l;->g:J

    iput-object p1, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    const-string v0, "oneaudience"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneaudience/sdk/a;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/l;->e:Lcom/oneaudience/sdk/a;

    new-instance v0, Lcom/oneaudience/sdk/l$i;

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneaudience/sdk/l$i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/l;->f:Lcom/oneaudience/sdk/l$i;

    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;
    .locals 2

    const-class v1, Lcom/oneaudience/sdk/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/l;->h:Lcom/oneaudience/sdk/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneaudience/sdk/l;

    invoke-direct {v0, p0}, Lcom/oneaudience/sdk/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneaudience/sdk/l;->h:Lcom/oneaudience/sdk/l;

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/l;->h:Lcom/oneaudience/sdk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/oneaudience/sdk/l$1;

    invoke-direct {v1, p0, p1}, Lcom/oneaudience/sdk/l$1;-><init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "Exception Registering activity lifecycle"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    const-string v1, "eula_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v1, "Eula was showed already"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oneaudience/sdk/l$g;

    invoke-direct {v1, p0, p2}, Lcom/oneaudience/sdk/l$g;-><init>(Lcom/oneaudience/sdk/l;Landroid/app/Activity;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/oneaudience/sdk/l$g;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "Show EULA Exception"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    const-class v1, Lcom/oneaudience/sdk/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/l;->h:Lcom/oneaudience/sdk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/l$i;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->f:Lcom/oneaudience/sdk/l$i;

    return-object v0
.end method

.method static synthetic c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->e:Lcom/oneaudience/sdk/a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    const-string v2, "eula_shown"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    const-string v3, "showEula"

    invoke-static {v2, v3, v4}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/f;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneaudience/sdk/p;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "permission_request_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastOpenDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_2

    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;)V

    :cond_3
    const-class v0, Lcom/oneaudience/sdk/OneAudience;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "One Audience SDK Init Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v4}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/oneaudience/sdk/l;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneaudience/sdk/l;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v1, "checkDeviceInfo ** preventing duplicate call **"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneaudience/sdk/l;->g:J

    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v1, "checkDeviceInfo ** setting timestamp **"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    const-string v1, "optout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    const-string v2, "opt_out_reported"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    const/4 p2, 0x1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "opt_out"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/oneaudience/sdk/l$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneaudience/sdk/l$e;-><init>(Lcom/oneaudience/sdk/l;Lcom/oneaudience/sdk/l$1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/oneaudience/sdk/l$e;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "Send Configuration Exception"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v1, "Do nothing user opt out"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "optout"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v1, "Couldn\'t opt out from oneAudience"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "eula"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "eula_shown"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    sget-object v2, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v3, "Eula accepted save status: %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "EULA Accepted Exception"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/l;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eula_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "Eula declined save status: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/l;->a:Ljava/lang/String;

    const-string v2, "EULA Declined Exception"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
