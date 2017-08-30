.class Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;
.super Ljava/lang/Object;
.source "AccountCreationWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/wizards/utils/AccountCreationWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideWebviewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$0(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$1(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$2(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$3(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/BasePrefsWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->updateValidation()V

    .line 110
    return-void
.end method
