.class public Lorg/abtollc/utils/RewriterPlugin;
.super Ljava/lang/Object;
.source "RewriterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/RewriterPlugin$OnRewriteReceiver;
    }
.end annotation


# static fields
.field private static AVAILABLE_REWRITERS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field private static final THIS_FILE:Ljava/lang/String; = "RewriterPlugin"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAvailableRewriters()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 88
    return-void
.end method

.method public static getAvailableRewriters(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v6, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 61
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 64
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "org.abtollc.phone.action.REWRITE_NUMBER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "it":Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 68
    .local v5, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 69
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    const-string v6, "RewriterPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found rewriter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 72
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "packagedActivityName":Ljava/lang/String;
    sget-object v8, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 75
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0    # "actInfos":Landroid/content/pm/ActivityInfo;
    .end local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packagedActivityName":Ljava/lang/String;
    .end local v5    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v6, Lorg/abtollc/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    return-object v6
.end method

.method public static rewriteNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 40
    .local v8, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "org.abtollc.phone.action.REWRITE_NUMBER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "it":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    new-instance v3, Lorg/abtollc/utils/RewriterPlugin$OnRewriteReceiver;

    invoke-direct {v3, p2}, Lorg/abtollc/utils/RewriterPlugin$OnRewriteReceiver;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "resultTreater":Lorg/abtollc/utils/RewriterPlugin$OnRewriteReceiver;
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    const/4 v5, -0x1

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {v3}, Lorg/abtollc/utils/RewriterPlugin$OnRewriteReceiver;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
