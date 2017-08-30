.class final Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;
.super Ljava/lang/Thread;
.source "IntegrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 171
    :try_start_0
    const-string v6, "IntegrationHelper"

    const-string v7, "--------------- Google Play Services --------------"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 175
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 176
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 178
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "com.google.android.gms.version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 180
    .local v3, "exists":Z
    if-eqz v3, :cond_1

    .line 181
    const-string v6, "Google Play Services"

    const/4 v7, 0x1

    # invokes: Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->access$000(Ljava/lang/String;Z)V

    .line 182
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "gaid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 184
    const-string v6, "IntegrationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GAID is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (use this for test devices)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v4    # "gaid":Ljava/lang/String;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "exists":Z
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v6, "Google Play Services"

    const/4 v7, 0x0

    # invokes: Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->access$000(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "exists":Z
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Google Play Services"

    # invokes: Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validationMessageIsPresent(Ljava/lang/String;Z)V
    invoke-static {v6, v9}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->access$000(Ljava/lang/String;Z)V

    goto :goto_0
.end method
