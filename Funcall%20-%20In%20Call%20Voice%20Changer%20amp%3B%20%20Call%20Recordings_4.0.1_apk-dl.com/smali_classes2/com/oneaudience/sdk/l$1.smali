.class Lcom/oneaudience/sdk/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oneaudience/sdk/l;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$1;->b:Lcom/oneaudience/sdk/l;

    iput-object p2, p0, Lcom/oneaudience/sdk/l$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/oneaudience/sdk/l$1;->b:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/l$1;->b:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastOpenDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity stopped checking if request should be sent."

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l$1;->b:Lcom/oneaudience/sdk/l;

    iget-object v1, p0, Lcom/oneaudience/sdk/l$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
