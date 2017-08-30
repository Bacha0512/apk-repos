.class Lcom/weirdvoice/splash/Splash$1;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/splash/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/splash/Splash$1$GetBalTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/splash/Splash;


# direct methods
.method constructor <init>(Lcom/weirdvoice/splash/Splash;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->netcnx:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/weirdvoice/splash/Splash;->access$1(Lcom/weirdvoice/splash/Splash;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    iget v0, v0, Lcom/weirdvoice/splash/Splash;->nbLaunches:I

    if-lez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v0}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 158
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v0, "username"

    const-string v1, ""

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "u":Ljava/lang/String;
    const-string v0, "deviceid"

    const-string v1, ""

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "d":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    invoke-virtual {v0}, Lcom/weirdvoice/splash/Splash;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v14, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 164
    .local v7, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 165
    .local v6, "accountCount":I
    if-eqz v7, :cond_0

    .line 167
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 177
    :try_start_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 178
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/weirdvoice/ui/Register;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/splash/Splash;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    invoke-virtual {v0}, Lcom/weirdvoice/splash/Splash;->finish()V

    .line 197
    .end local v6    # "accountCount":I
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "d":Ljava/lang/String;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    .end local v12    # "u":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 168
    .restart local v6    # "accountCount":I
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "d":Ljava/lang/String;
    .restart local v11    # "sp":Landroid/content/SharedPreferences;
    .restart local v12    # "u":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 169
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Splash"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 172
    throw v0

    .line 185
    :cond_2
    new-instance v0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;

    invoke-direct {v0, p0}, Lcom/weirdvoice/splash/Splash$1$GetBalTask;-><init>(Lcom/weirdvoice/splash/Splash$1;)V

    new-array v1, v14, [Ljava/lang/String;

    aput-object v12, v1, v13

    invoke-virtual {v0, v1}, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 190
    .end local v6    # "accountCount":I
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "d":Ljava/lang/String;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    .end local v12    # "u":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/weirdvoice/ui/Register;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/splash/Splash;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    invoke-virtual {v0}, Lcom/weirdvoice/splash/Splash;->finish()V

    goto :goto_2

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->netinit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/weirdvoice/splash/Splash;->access$2(Lcom/weirdvoice/splash/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;

    # getter for: Lcom/weirdvoice/splash/Splash;->netinit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/weirdvoice/splash/Splash;->access$2(Lcom/weirdvoice/splash/Splash;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c025e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 180
    .restart local v6    # "accountCount":I
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "d":Ljava/lang/String;
    .restart local v11    # "sp":Landroid/content/SharedPreferences;
    .restart local v12    # "u":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
