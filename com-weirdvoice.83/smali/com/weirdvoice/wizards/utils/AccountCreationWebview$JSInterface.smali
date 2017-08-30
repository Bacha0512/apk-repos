.class public Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;
.super Ljava/lang/Object;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/wizards/utils/AccountCreationWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishAccountCreation(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->finishAccountCreationWithExtra(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public finishAccountCreationAndQuit(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "success"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$3(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/BasePrefsWizard;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;

    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/BasePrefsWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;->onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;->saveAndQuit()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAccountCreationWithExtra(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extraData"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$3(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/BasePrefsWizard;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;

    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/BasePrefsWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;->onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method
