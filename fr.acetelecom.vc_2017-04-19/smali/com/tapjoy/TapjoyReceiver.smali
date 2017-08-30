.class public Lcom/tapjoy/TapjoyReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/tapjoy/internal/fo;->b(Landroid/content/Context;)Lcom/tapjoy/internal/fo;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/tapjoy/TapjoyReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_8

    if-eqz v4, :cond_4

    const-string v1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;

    move-result-object v1

    iget-object v4, v1, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v4, v3}, Lcom/tapjoy/internal/fp;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, v1, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v4, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v6, "push_click"

    invoke-virtual {v1, v4, v6}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/internal/gd$p;->k()Lcom/tapjoy/internal/gd$p$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tapjoy/internal/gd$p$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$p$a;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tapjoy/internal/gd$c$a;->a(Lcom/tapjoy/internal/gd$p$a;)Lcom/tapjoy/internal/gd$c$a;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v3, v5}, Lcom/tapjoy/internal/fx;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1

    :cond_8
    const-string v0, "No intent that can be used to launch the main activity."

    invoke-static {v0}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
