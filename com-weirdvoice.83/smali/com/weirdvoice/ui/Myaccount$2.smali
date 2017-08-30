.class Lcom/weirdvoice/ui/Myaccount$2;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Myaccount;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0c0268

    const/4 v10, 0x1

    .line 82
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    iget-object v8, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/ui/Myaccount;->access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V

    .line 83
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "username"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "username":Ljava/lang/String;
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "accregistered"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "accReg":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    const-string v7, "MyAccount"

    const-string v8, "empty u"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v7, "noreg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    const-string v7, "MyAccount"

    const-string v8, "noreg"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_1
    const-string v7, "reg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getBuyUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isSamApp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, "version":I
    const-string v6, ""

    .line 99
    .local v6, "zename":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    invoke-virtual {v7}, Lcom/weirdvoice/ui/Myaccount;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 100
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 101
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 103
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .end local v5    # "version":I
    .end local v6    # "zename":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    invoke-virtual {v7, v1}, Lcom/weirdvoice/ui/Myaccount;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v7, "MyAccount"

    const-string v8, "not sure reg"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount$2;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c025e

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 102
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v5    # "version":I
    .restart local v6    # "zename":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
