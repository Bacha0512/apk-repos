.class Lcom/oneaudience/sdk/l$d;
.super Lcom/oneaudience/sdk/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/l;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-direct {p0}, Lcom/oneaudience/sdk/q;-><init>()V

    iput-object p2, p0, Lcom/oneaudience/sdk/l$d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oneaudience/sdk/l$d;->c:Z

    iput-boolean p4, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    return-void
.end method

.method private a(Z)I
    .locals 6

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing configuration sync... FETCHING"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oneaudience/sdk/d;

    invoke-direct {v0, p1}, Lcom/oneaudience/sdk/d;-><init>(Z)V

    new-instance v1, Lcom/oneaudience/sdk/c;

    invoke-direct {v1}, Lcom/oneaudience/sdk/c;-><init>()V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v4}, Lcom/oneaudience/sdk/l;->d(Lcom/oneaudience/sdk/l;)Lcom/oneaudience/sdk/a;

    move-result-object v4

    iget-object v5, p0, Lcom/oneaudience/sdk/l$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneaudience/sdk/d;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/a;Ljava/lang/String;)Lcom/oneaudience/sdk/b/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneaudience/sdk/c;->a(Lcom/oneaudience/sdk/b/a/c;)Lcom/oneaudience/sdk/b/a/d;

    move-result-object v1

    iget v2, v1, Lcom/oneaudience/sdk/b/a/d;->a:I

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Performing configuration sync... FETCHING FAILED"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v0, v1, Lcom/oneaudience/sdk/b/a/d;->a:I

    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v3}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneaudience/sdk/d;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/b/a/d;)V

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Performing configuration sync... FETCHING DONE"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Performing configuration sync... FETCHING UP-TO DATE"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    const-wide/32 v12, 0x5265c00

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Performing configuration sync..."

    invoke-static {v0, v3}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "interval"

    invoke-interface {v0, v3, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "last_updated"

    invoke-interface {v0, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "oneAudienceId"

    const-string v8, ""

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneaudience/sdk/l$d;->c:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    cmp-long v0, v4, v10

    if-ltz v0, :cond_0

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing configuration sync... No Need For A Configuration"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v9

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/l$d;->a(Z)I

    move-result v3

    const v0, 0x186a0

    if-eq v3, v0, :cond_3

    const v0, 0x186a1

    if-ne v3, v0, :cond_9

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v4}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v5, "events"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v5, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    if-eqz v5, :cond_4

    const-string v5, "opt_out_reported"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class v4, Lcom/oneaudience/sdk/OneAudience;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "One Audience SDK Server OK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-boolean v4, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oneaudience/sdk/l$d;->d:Z

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    :cond_5
    if-nez v0, :cond_6

    const v0, 0x186a4

    if-eq v3, v0, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Lcom/oneaudience/sdk/l;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "interval"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_4
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interval for next config is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneaudience/sdk/l$d;->a:Lcom/oneaudience/sdk/l;

    invoke-static {v2}, Lcom/oneaudience/sdk/l;->c(Lcom/oneaudience/sdk/l;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;J)V

    :cond_8
    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing configuration sync... DONE"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    const-class v4, Lcom/oneaudience/sdk/OneAudience;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "One Audience SDK Server Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-wide/32 v0, 0x36ee80

    goto :goto_4
.end method
