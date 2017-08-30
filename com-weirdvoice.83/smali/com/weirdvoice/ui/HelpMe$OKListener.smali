.class Lcom/weirdvoice/ui/HelpMe$OKListener;
.super Ljava/lang/Object;
.source "HelpMe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/HelpMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/HelpMe;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/HelpMe;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/HelpMe;Lcom/weirdvoice/ui/HelpMe$OKListener;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/HelpMe$OKListener;-><init>(Lcom/weirdvoice/ui/HelpMe;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v5, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    # getter for: Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/weirdvoice/ui/HelpMe;->access$0(Lcom/weirdvoice/ui/HelpMe;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 72
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const-string v3, ""

    .line 74
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    # getter for: Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/weirdvoice/ui/HelpMe;->access$0(Lcom/weirdvoice/ui/HelpMe;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :goto_0
    iget-object v5, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/HelpMe;->dismiss()V

    .line 79
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getMarketUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "urlString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    iget-object v5, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    # getter for: Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/weirdvoice/ui/HelpMe;->access$0(Lcom/weirdvoice/ui/HelpMe;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "urlString":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v5, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;

    iget-object v6, p0, Lcom/weirdvoice/ui/HelpMe$OKListener;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-direct {v5, v6}, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;-><init>(Lcom/weirdvoice/ui/HelpMe;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "y"

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v5

    goto :goto_1

    .line 76
    :catch_1
    move-exception v5

    goto :goto_0
.end method
